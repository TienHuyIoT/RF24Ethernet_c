

#include "IPAddress.h"

class RF24;
class RF24Network;


class RF24EthernetClass {//: public Print {
	public:
	
		/**
		* Constructor to set up the Ethernet layer. Requires the radio and network to be configured by the user
		* this allows users to set custom settings at the radio or network level
		*/
		
		RF24EthernetClass(RF24& _radio,RF24Network& _network, RF24Mesh& _mesh){
                  RF24E_init(); 
                };
                
		RF24EthernetClass(RF24& _radio,RF24Network& _network){
                  RF24E_init(); 
                };
		/**
		* Basic constructor
		*/
		RF24EthernetClass(){
                  RF24E_init(); 
                };
		
		/**
		* @note Deprecated, maintained for backwards compatibility with old examples  
		*  
		* This function is no longer needed, and does nothing  
		*/
		void use_device(){
                  RF24E_use_device(); 
                };
		
		/**
		* Configure the IP address and subnet mask of the node. This is independent of the RF24Network layer, so the IP 
		* and subnet only have to conform to standard IP routing rules within your network
		*/
		void begin(IP_ADDR myIP, IP_ADDR subnet){
                  RF24E_begin( myIP, subnet); 
                };
		
		/**
		* Configure the IP address and subnet mask of the node. This is independent of the RF24Network layer, so the IP 
		* and subnet only have to conform to standard IP routing rules within your network
		*/
		void begin(IPAddress ip){	
		  IPAddress dns = ip;
                  dns[3] = 1;
                  begin(ip, dns);
                };
		void begin(IPAddress ip, IPAddress dns){
                  IPAddress gateway = ip;
                  gateway[3] = 1;
                  begin(ip, dns, gateway);
                };
		void begin(IPAddress ip, IPAddress dns, IPAddress gateway){
                  IPAddress subnet(255, 255, 255, 0);
                  begin(ip, dns, gateway, subnet);
                };
		void begin(IPAddress ip, IPAddress dns, IPAddress gateway, IPAddress subnet){
                  IPAddress_ ip_;
                  IPAddress_ dns_;
                  IPAddress_ gateway_;
                  IPAddress_ subnet_;
                  ip_.bytes[0]=ip[0];
                  ip_.bytes[1]=ip[1];
                  ip_.bytes[2]=ip[2];
                  ip_.bytes[3]=ip[3];
                  dns_.bytes[0]=dns[0];
                  dns_.bytes[1]=dns[1];
                  dns_.bytes[2]=dns[2];
                  dns_.bytes[3]=dns[3];
                  gateway_.bytes[0]=gateway[0];
                  gateway_.bytes[1]=gateway[1];
                  gateway_.bytes[2]=gateway[2];
                  gateway_.bytes[3]=gateway[3];
                  subnet_.bytes[0]=subnet[0];
                  subnet_.bytes[1]=subnet[1];
                  subnet_.bytes[2]=subnet[2];
                  subnet_.bytes[3]=subnet[3];

                  RF24E_begin_idgs( ip_, dns_, gateway_, subnet_); 
                };		
		
		
		/**
		* Configure the gateway IP address. This is generally going to be your master node with RF24Network address 00.
		*/
		void set_gateway(IPAddress gwIP){
                  IPAddress_ gwIP_;
		  gwIP_.bytes[0]=gwIP[0];
		  gwIP_.bytes[1]=gwIP[1];
		  gwIP_.bytes[2]=gwIP[2];
		  gwIP_.bytes[3]=gwIP[3];
                  RF24E_set_gateway(gwIP_); 
                };
		
		/**
		* Listen to a specified port - This will likely be changed to closer match the Arduino Ethernet API with server.begin();
		*/
		void listen(uint16_t port){
                  RF24E_listen(port); 
                };

		/* *
		* Sets the MAC address of the RF24 module, which is an RF24Network address
		* Specify an Octal address to assign to this node, which will be used as the Ethernet mac address
		* If setting up only a few nodes, use 01 to 05
		* Please reference the RF24Network documentation for information on setting up a static network
		* RF24Mesh will be integrated to provide this automatically
		*/
		void setMac(uint16_t address){
                  RF24E_setMac(address); 
                };
		
		/** Sets the Radio channel/frequency to use (0-127)
		*/
		void setChannel(uint8_t channel){
                  RF24E_setChannel(channel); 
                };
		

	/** Indicates whether data is available.
	*/
	int available(){
                  return RF24E_available(); 
                };
	
	/** Returns the local IP address
	*/
	IPAddress localIP(){
                  return RF24E_localIP().bytes; 
                };
	/** Returns the subnet mask
	*/
	IPAddress subnetMask(){
                  return RF24E_subnetMask().bytes; 
                };
	/** Returns the gateway IP address
	*/
	IPAddress gatewayIP(){
                  return RF24E_gatewayIP().bytes; 
                };
	/** Returns the DNS server IP address
	*/
	IPAddress dnsServerIP(){
                  return RF24E_dnsServerIP().bytes; 
                };

	/** Keeps the TCP/IP stack running & processing incoming data
	*/
	void update(){
          RF24E_update(); 
        };
	
};

//extern RF24EthernetClass RF24Ethernet;
extern RF24EthernetClass RF24Ethernet;
 
 
#include "Print.h"
#include "Client.h"
#include "Server.h"




class RF24Client : public Client {

public:

	/**
	* Basic constructor
	*/	
	RF24Client(){
          RF24EC_init(); 
        };
	
	/**
	* Establish a connection to a specified IP address and port
	*/
	int connect(IPAddress ip, uint16_t port){
          IPAddress_ ip_;
          ip_.bytes[0]=ip[0];
          ip_.bytes[1]=ip[1];
          ip_.bytes[2]=ip[2];
          ip_.bytes[3]=ip[3];
          return RF24EC_connect(ip_, port) ; 
        };
    
	/**
	* Establish a connection to a given hostname and port
	* @note UDP must be enabled in uip-conf.h for DNS lookups to work  
	* 
	* @note Tip: DNS lookups generally require a buffer size of 250-300 bytes or greater.
	* Lookups will generally return responses with a single A record if using hostnames like
	* "www.google.com" instead of "google.com" which works well with the default buffer size
	*/
	int connect(const char *host, uint16_t port){
          return RF24EC_connect_h(host, port) ; 
        };
    
	/**
	* Read available data into a buffer
	* @code
	* uint8_t buf[size];
    * client.read(buf,size);
	* @endcode
	*/
	int read(uint8_t *buf, size_t size){
          return RF24EC_read_b(buf, size) ; 
        };
	
	/**
	* Read data one byte at a time
	* @code
	* char c = client.read();
	* @endcode
	*/
	int read(){
          return RF24EC_read() ; 
        };
	
	/**
	* Disconnects from the current active connection
	*/
        void stop(){
          RF24EC_stop() ; 
        };  
  
	/**
	* Indicates whether the client is connected or not
	*/
	uint8_t connected(){
          return RF24EC_connected() ; 
        };
	
	/**
	* Write a single byte of data to the stream
	* @note This will write an entire TCP payload with only 1 byte in it
	*/
        size_t write(uint8_t c){
          return RF24EC_write_b(c) ; 
        };
	
	/**
	* Write a buffer of data, to be sent in a single TCP packet
	*/
        size_t write(const uint8_t *buf, size_t size){
          return RF24EC_write( buf, size) ; 
        };
    
	/**
	* Indicates whether data is available to be read by the client.
	* @return Returns the number of bytes available to be read
	* @note Calling client or server available() keeps the IP stack and RF24Network layer running, so needs to be called regularly,  
    * even when disconnected or delaying for extended periods.  
	*/
	int available(){
          return RF24EC_available() ; 
        };
    
	/**
	* Wait Available
	*
	* Helps to ensure all incoming data has been received, prior to writing data back to the client, etc.
	*
	* Indicates whether data is available to be read by the client, after waiting a maximum period of time.
	* @return Returns the number of bytes available to be read or 0 if timed out
	* @note Calling client or server available() keeps the IP stack and RF24Network layer running, so needs to be called regularly,  
    * even when disconnected or delaying for extended periods.  
	*/
	
	int waitAvailable(uint32_t timeout=750){
          return RF24EC_waitAvailable(timeout) ; 
        };
    
	/**
	* Read a byte from the incoming buffer without advancing the point of reading
	*/
	int peek(){
          return RF24EC_peek(); 
        };
	
	/**
	* Flush all incoming client data from the current connection/buffer
	*/
        void flush(){
          return RF24EC_flush(); 
        };
    
	using Print::write;	
		
        operator bool(){
          RF24E_tick();
          return RF24EC_getData() && (!(RF24EC_getData()->state & UIP_CLIENT_REMOTECLOSED) || RF24EC_getData()->packets_in != 0);
        };
        //virtual bool operator==(const EthernetClient& rhs){ cli.getData() && rhs.getData() && (cli.getData() == rhs.getData()) 
        //virtual bool operator!=(const EthernetClient& rhs) { return !this->operator==(rhs); };
       
};


class RF24Server : public Server {

public:
  RF24Server(uint16_t port){
    RF24ES_init(port); 
  };
  RF24Client available(){
    RF24ES_available() ; 
  };
  void begin(){
    RF24ES_begin() ; 
  };
  size_t write(uint8_t c){
    return RF24ES_write_b(c) ; 
  };
  size_t write(const uint8_t *buf, size_t size){
    return RF24ES_write(buf, size) ; 
  };

  using Print::write;

};



#include "ethernet_comp.h"
