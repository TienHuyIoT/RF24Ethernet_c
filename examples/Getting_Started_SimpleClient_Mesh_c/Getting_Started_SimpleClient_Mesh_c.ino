/*
 * *************************************************************************
 * RF24Ethernet Arduino library by TMRh20 - 2014-2015
 * 
 * Automated (mesh) wireless networking and TCP/IP communication stack for RF24 radio modules
 * 
 * RF24 -> RF24Network -> UIP(TCP/IP) -> RF24Ethernet 
 *                     -> RF24Mesh
 *                     
 *      Documentation: http://tmrh20.github.io/RF24Ethernet/
 *      
 * *************************************************************************             
 * 
 * What it does?: 
 * 
 * RF24Ethernet allows tiny Arduino-based sensors to automatically 
 * form and maintain an interconnected, wireless mesh network capable of utilizing
 * standard (TCP/IP) protocols for communication. ( Nodes can also use
 * the underlying RF24Network/RF24Mesh layers for internal communication. )
 * 
 * Any device with a browser can connect to and control various sensors, and/or the sensors
 * can communicate directly with any number of IP based systems.
 * 
 * Why? 
 * 
 * Enabling TCP/IP directly on the sensors enables users to connect directly
 * to the sensor nodes with any standard browser, http capable tools, or with
 * virtually any related protocol. Nodes are able to handle low level communications
 * at the network layer and/or TCP/IP based connections. 
 * 
 * Remote networks can be easily interconnected using SSH tunnelling, VPNs etc., and 
 * sensor nodes can be configured to communicate without the need for an intermediary or additional programming.
 * 
 * Main Features:
 * 
 * 1. Same basic feature set as any Arduino Ethernet adapter, only wireless...
 * 2. Uses RPi OR Arduino+Linux OR Arduino + any SLIP capable device as the wireless gateway/router.
 * 3. Easy Arduino configuration: Just assign a unique IP address to each node, ending in 2-255 (ie: 192.168.1.32)
 *    *Linux devices use standard TCP/IP networking (IPTABLES,NAT,etc) and tools (wget, ftp, curl, python...)
 * 4. Automated (mesh) networking creates and maintains network connectivity as nodes join the network or move around
 * 5. Automated, multi-hop routing allows users to greatly extend the range of RF24 devices
 * 6. API based on the official Arduino Ethernet library. ( https://www.arduino.cc/en/Reference/Ethernet )
 * 7. RF24Gateway (companion program for RPi) provides a user interface that automatically handles TCP/IP
 *    data, and is easily modified to handle custom RF24Network/RF24Mesh data.
 * 8. Reduce/Remove the need for custom applications. Any device with a browser can connect directly to the sensors!
 * 9. Handle (relatively) large volumes of data and file transfers automatically.
 * 
 * *************************************************************************
 * Example Network:
 * 
 * In the following example, 8 Arduino devices have assembled themselves into a
 * wireless mesh network, with 3 sensors attached directly to RPi/Linux. Five 
 * additional sensors are too far away to connect directly to the RPi/Gateway,
 * so they attach automatically to the closest sensor, which will automatically 
 * relay all communications for the distant node.
 * 
 * Example network:
 * 
 * Arduino 4 <-> Arduino 1 <-> Raspberry Pi    <-> Webserver
 * Arduino 5 <->              OR Arduino+Linux <-> Database
 * Arduino 6 <->                               <-> PHP
 *                                             <-> BASH (Wget, Curl, etc)
 * Arduino 7 <-> Arduino 2 <->                 <-> Web-Browser 
 * Arduino 8 <->                               <-> Python
 *               Arduino 3 <->                 <-> NodeJS
 *                                             <-> SSH Tunnel <-> Remote RF24Ethernet Sensor Network
 *                                             <-> VPN        <->
 *               
 * In addition to communicating with external systems, the nodes are able to               
 * communicate internally using TCP/IP, and/or at the RF24Mesh/RF24Network 
 * layers.
 * 
 * **************************************************************************
 * 
 * RF24Ethernet simple web client example
 *
 * RF24Ethernet uses the fine uIP stack by Adam Dunkels <adam@sics.se>
 *
 * In order to minimize memory use and program space:
 * 1. Open the RF24Network library folder
 * 2. Edit the RF24Networl_config.h file
 * 3. Un-comment #define DISABLE_USER_PAYLOADS
 *
 * This example connects to google and downloads the index page
 */



#include <RF24.h>
#include <RF24Mesh.h>
#include <RF24Network.h>
//#include <printf.h>
#include <RF24Ethernet.h>
#if !defined __arm__ && !defined __ARDUINO_X86__
  #include <EEPROM.h>
#endif

/*** Configure the radio CE & CS pins ***/
//RF24_ radio;
//RF24Network_ network;
//RF24Mesh_ mesh;
//RF24EthernetClass RF24Ethernet;


EthernetClient client;

void setup() {
  RF24_init(7,8);
  RF24N_init();
  RF24M_init();
  RF24E_init();
  
  Serial.begin(115200);
 // printf_begin();
  Serial.println("Start");
  
  // Set the IP address we'll be using. The last octet mast match the nodeID (9)
  IPAddress_ myIP={10,10,2,4};
   
  RF24E_begin_i(myIP);
  RF24M_begin(MESH_DEFAULT_CHANNEL, RF24_1MBPS, MESH_RENEWAL_TIMEOUT);
  
  // If you'll be making outgoing connections from the Arduino to the rest of
  // the world, you'll need a gateway set up.
  IPAddress_ gwIP={10,10,2,2};
  
  RF24E_set_gateway(gwIP);  
}

uint32_t counter = 0;
uint32_t reqTimer = 0;

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

if(size = RF24EC_available() > 0){
    char c = RF24EC_read();
    Serial.print(c);
    // Sends a line-break every 150 characters, comment out if not connecting to google
    //if(counter > 150){ Serial.println(""); counter=0;}
    counter++;
}

  // if the server's disconnected, stop the client:
  if (!RF24EC_connected()) {
    Serial.println();
    Serial.println(F("Disconnect. Waiting for disconnect timeout"));
    RF24EC_stop();
  
    // Wait 5 seconds between requests
    reqTimer = millis();
    while(millis() - reqTimer < 5000 && ! RF24EC_available() ){ }    
    connect();
  
  }
  // We can do other things in the loop, but be aware that the loop will
  // briefly pause while IP data is being processed.
}

void connect(){
    Serial.println(F("connecting"));
    IPAddress_ goog={74,125,224,87};
    
    IPAddress_ pizza={94,199,58,243};
    
    if (RF24EC_connect(pizza, 80)) {
      Serial.println(F("connected"));
      
      // Make an HTTP request:
      RF24EC_write_s("GET /asciiart/pizza.txt HTTP/1.1\n");
      //client.write("GET / HTTP/1.1\n");
      
      RF24EC_write_s("Host: fiikus.net\n");
      //client.write("Host: www.google.ca\n");
      
      RF24EC_write_s("Connection: close\n\n");   
    
    }else{
      // if you didn't get a connection to the server:
      Serial.println(F("connection failed"));
    }
}

