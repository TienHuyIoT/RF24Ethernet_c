/*
 * *************************************************************************
   RF24Ethernet Arduino library by TMRh20 - 2014-2015

   Automated (mesh) wireless networking and TCP/IP communication stack for RF24 radio modules

   RF24 -> RF24Network -> UIP(TCP/IP) -> RF24Ethernet
                       -> RF24Mesh

        Documentation: http://tmrh20.github.io/RF24Ethernet/

 * *************************************************************************

   RF24Ethernet web client example

   In order to minimize memory use and program space:
   1. Open the RF24Network library folder
   2. Edit the RF24Networl_config.h file
   3. Un-comment #define DISABLE_USER_PAYLOADS

   This example connects to google and downloads the index page
*/


#include <RF24_c.h>
#include <RF24Network_c.h>
#include <RF24Mesh_c.h>
#include <RF24Ethernet_c.h>

/*** Configure the radio CE & CS pins ***/
RF24 radio;
RF24Network network;
RF24Mesh mesh;
RF24EthernetClass RF24Ethernet;


EthernetClient client;

void setup() {
  RF24_init(&radio,7,8);
  RF24N_init(&network,&radio);
  RF24M_init(&mesh,&radio,&network);
  RF24E_init(&RF24Ethernet, &radio, &network,&mesh);
  
  Serial.begin(115200);
  Serial.print("Start Mesh:");

  // Set the IP address we'll be using. The last octet mast match the nodeID (9)
  IPAddress myIP={10,10,2,4};
  
  RF24E_begin_i(&RF24Ethernet,myIP);

  if (RF24M_begin(&mesh, MESH_DEFAULT_CHANNEL, RF24_1MBPS, MESH_RENEWAL_TIMEOUT)) {
    Serial.println(" OK");
  } else {
    Serial.println(" Failed");
  }

  // If you'll be making outgoing connections from the Arduino to the rest of
  // the world, you'll need a gateway set up.
  IPAddress gwIP={10,10,2,2};
  
  RF24E_set_gateway(&RF24Ethernet,gwIP);
}

uint32_t counter = 0;
uint32_t reqTimer = 0;

uint32_t mesh_timer = 0;

bool gotHeader = 0;
long contentLength = 0;

void loop() {

  if (millis() - mesh_timer > 30000) { //Every 30 seconds, test mesh connectivity
    mesh_timer = millis();
    if ( ! RF24M_checkConnection(&mesh) ) {
      RF24M_renewAddress(&mesh, MESH_RENEWAL_TIMEOUT);
    }
  }

  size_t size;

  if ( (size = RF24EC_available(&client)) > 0) {

    //Look for http header with content length. This will empty the entire request
    //if the server does not include the length.
    if (!gotHeader) {
      if (RF24EC_find(&client,"Content-Length: ")) {
        contentLength = RF24EC_parseInt(&client,SKIP_ALL_,NO_IGNORE_CHAR);
        RF24EC_find(&client,"\r\n\r\n");
        counter = 0;
        gotHeader = true;
      }
      //If the header was already received, read the data & verify the length
    } else {
      if (RF24EC_available(&client) > 0) {
        char c = RF24EC_read(&client);
        Serial.print(c);
        counter++;
      }
      if (counter == contentLength) {
        gotHeader = false;
        Serial.print("Content length "); Serial.println(contentLength);
        Serial.print("Received length "); Serial.println(counter);
      }
    }
  }

  // if the server's disconnected, stop the client:
  if (!RF24EC_connected(&client)) {
    Serial.println();
    Serial.println(F("Disconnect. Waiting for disconnect timeout"));
    RF24EC_stop(&client);

    // Wait 5 seconds between requests
    reqTimer = millis();
    while (millis() - reqTimer < 5000 && ! RF24EC_available(&client) ) { }
    connect();

  }
  // We can do other things in the loop, but be aware that the loop will
  // briefly pause while IP data is being processed.
}

void connect() {
  Serial.println(F("connecting"));
  IPAddress pizza={94,199,58,243};
  
 
  if (RF24EC_connect(&client,pizza, 80)) {
    Serial.println(F("connected"));

    // Make an HTTP request:
    RF24EC_write_s(&client,"GET /asciiart/pizza.txt HTTP/1.1\n");
    RF24EC_write_s(&client,"Host: fiikus.net\n");
    RF24EC_write_s(&client,"Connection: close\n\n");

  } else {
    // if you didn't get a connection to the server:
    Serial.println(F("connection failed"));
  }
}

