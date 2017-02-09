/*
 * RF24Ethernet InteractiveServer example by TMRh20
 * - Webserver controlling an LED example
 *
 * RF24Ethernet uses the uIP stack by Adam Dunkels <adam@sics.se>
 *
 * This example demonstrates how to configure a sensor node to act as a webserver and
 * allows a user to control a connected LED by clicking links on the webpage
 * The requested URL is used as input, to determine whether to turn the LED off or on
 *
 * In order to minimize memory use and program space:
 * 1. Open the RF24Network library folder
 * 2. Edit the RF24Networl_config.h file
 * 3. Un-comment #define DISABLE_USER_PAYLOADS
 *
 *
 * This example uses RF24Mesh. 
 * Set #define UIP_CONF_LLH_LEN 0 in uip_conf.h if used with a TUN(RF24Mesh) or SLIP interface 
 * 
 */

#include <RF24.h>
#include <RF24Network.h>
//#include <printf.h>
#include <RF24Ethernet.h>
#include <RF24Mesh.h>
#include"serial.h"
#include "HTML.h"

/*** Configure the radio CE & CS pins ***/
//RF24 radio;
//RF24Network network;
//RF24Mesh mesh;
//RF24EthernetClass RF24Ethernet;

  #define LED_PIN PORTBbits.RB0
  #define LED_PIN_T TRISBbits.TRISB0

// Configure the server to listen on port 1000
//EthernetServer server;

/**********************************************************/
static unsigned short generate_tcp_stats();

void setup() {
  RF24_init();//pins are defined in xc8_config.h
  RF24N_init();
  RF24M_init();
  RF24E_init();
  RF24ES_init(1000); 

  Serial_begin(115200);
  //printf_begin();
  Serial_println("start");
  LED_PIN_T=OUTPUT;
  
  IPAddress_ myIP={10,10,2,4};
  
  RF24E_begin_i(myIP);
  RF24M_begin( MESH_DEFAULT_CHANNEL, RF24_1MBPS, MESH_RENEWAL_TIMEOUT);

  //Set IP of the RPi (gateway)
  IPAddress_ gwIP={10,10,2,2};
 
  
  RF24E_set_gateway(gwIP);

  RF24ES_begin();

}


/********************************************************/

uint32_t mesh_timer = 0;

void loop() {

  // Optional: If the node needs to move around physically, or using failover nodes etc.,
  // enable address renewal
  if(millis()-mesh_timer > 30000){ //Every 30 seconds, test mesh connectivity
    mesh_timer = millis();
    if( ! RF24M_checkConnection() ){
        //refresh the network address        
        RF24M_renewAddress(MESH_RENEWAL_TIMEOUT);
     }
  }

  size_t size;

  RF24ES_available();
  if (RF24EC_valid()) 
  {
    uint8_t pageReq = 0;
    generate_tcp_stats();
    while ((size = RF24EC_available()) > 0)
    {
      // If a request is received with enough characters, search for the / character
      if (size >= 7) {
        RF24EC_findUntil("/", "/");
        char buf[3] = {"  "};
        if(RF24EC_available() >= 2){
        buf[0] = RF24EC_read();  // Read in the first two characters from the request
        buf[1] = RF24EC_read();

        if (strcmp(buf, "ON") == 0) { // If the user requested http://ip-of-node:1000/ON
          led_state = 1;
          pageReq = 1;
          LED_PIN=led_state;
          
        }else if (strcmp(buf, "OF") == 0) { // If the user requested http://ip-of-node:1000/OF
          led_state = 0;
          pageReq = 1;
          LED_PIN=led_state;
          
        }else if (strcmp(buf, "ST") == 0) { // If the user requested http://ip-of-node:1000/ST
          pageReq = 2;
          
        }else if (strcmp(buf, "CR") == 0) { // If the user requested http://ip-of-node:1000/CR
          pageReq = 3;
          
        }else if(buf[0] == ' '){
          pageReq = 4; 
        }
      }
      }
      // Empty the rest of the data from the client
      //while (client.waitAvailable()) {
        RF24EC_flush();
      //}
    }
    
    /**
    * Based on the incoming URL request, send the correct page to the client
    * see HTML.h
    */
    switch(pageReq){
       case 2: stats_page(); break;
       case 3: credits_page(); break;
       case 4: main_page(); break;
       case 1: main_page(); break;
       default: break; 
    }    

    RF24EC_stop();
    Serial_println(F("********"));

  }

  // We can do other things in the loop, but be aware that the loop will
  // briefly pause while IP data is being processed.
}

/**
* This section displays some basic connection stats via Serial and demonstrates
* how to interact directly with the uIP TCP/IP stack
* See the uIP documentation for more info
*/
static unsigned short generate_tcp_stats()
{
  struct uip_conn *conn;

  // If multiple connections are enabled, get info for each active connection
  for (uint8_t i = 0; i < UIP_CONF_MAX_CONNECTIONS; i++) {
    conn = &uip_conns[i];

    // If the application state is active for an available connection, print the info
    if (conn->appstate) {
      Serial_print(F("Connection no "));
      Serial_println(itoa_(i));
      Serial_print(F("Local Port "));
      Serial_println(itoa_(htons(conn->lport)));
      Serial_print(F("Remote IP/Port "));
      Serial_print(itoa_(htons(conn->ripaddr[0]) >> 8));
      Serial_print(F("."));
      Serial_print(itoa_(htons(conn->ripaddr[0]) & 0xff));
      Serial_print(F("."));
      Serial_print(itoa_(htons(conn->ripaddr[1]) >> 8));
      Serial_print(F("."));
      Serial_print(itoa_(htons(conn->ripaddr[1]) & 0xff));
      Serial_print(F(":"));
      Serial_println(itoa_(htons(conn->rport)));
      Serial_print(F("Outstanding "));
      Serial_println((uip_outstanding(conn)) ? "*" : " " );

    }
  }
  return 1;
}

