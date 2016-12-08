
/*
 RF24Client.h - Arduino implementation of a uIP wrapper class.
 Copyright (c) 2016 Luis Claudio Gamboa Lopes <lcgamboa@yahoo.com>
 Copyright (c) 2014 tmrh20@gmail.com, github.com/TMRh20 
 Copyright (c) 2013 Norbert Truchsess <norbert.truchsess@t-online.de>
 All rights reserved.

 Stream.h - adds parsing methods to Stream class
 Copyright (c) 2008 David A. Mellis.  All right reserved.

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
  
#ifndef RF24CLIENT_H
#define RF24CLIENT_H

#ifdef __cplusplus
extern "C" {
#endif

//#include "Print.h"
//#include "Client.h"
#define NO_IGNORE_CHAR  '\x01'

//#define UIP_SOCKET_DATALEN UIP_TCP_MSS
//#define UIP_SOCKET_NUMPACKETS UIP_RECEIVE_WINDOW/UIP_TCP_MSS+1
//#ifndef UIP_SOCKET_NUMPACKETS
//#define UIP_SOCKET_NUMPACKETS 5
//#endif

#define UIP_CLIENT_CONNECTED 0x10
#define UIP_CLIENT_CLOSE 0x20
#define UIP_CLIENT_REMOTECLOSED 0x40
#define UIP_CLIENT_RESTART 0x80
#define UIP_CLIENT_STATEFLAGS (UIP_CLIENT_CONNECTED | UIP_CLIENT_CLOSE | UIP_CLIENT_REMOTECLOSED | UIP_CLIENT_RESTART)
#define UIP_CLIENT_SOCKETS ~UIP_CLIENT_STATEFLAGS

/**
 * @warning <b> This is used internally and should not be accessed directly by users </b>
 */

typedef struct {
  uint8_t state;
  uint8_t packets_in[UIP_SOCKET_NUMPACKETS];
  uint16_t lport;        /**< The local TCP port, in network byte order. */
} uip_userdata_closed_t;


/**
 * Data structure for holding per connection data
 * @warning <b> This is used internally and should not be accessed directly by users </b>
 */
typedef struct {
  uint8_t state;
  uint8_t packets_in;
  uint8_t packets_out;
  uint16_t out_pos;
#if UIP_CLIENT_TIMER >= 0
  unsigned long timer;
#endif
 uint8_t windowOpened;
 uint32_t restartTime;
 uint32_t restartInterval;
 uint32_t connAbortTime;
 uint8_t myData[OUTPUT_BUFFER_SIZE];
 uint8_t myDataIn[OUTPUT_BUFFER_SIZE]; 
 uint16_t dataPos;
 uint16_t dataCnt;
 uint8_t hold;
 uint8_t sent;
} uip_userdata_t;

typedef enum{
    SKIP_ALL_,       // All invalid characters are ignored.
    SKIP_NONE_,      // Nothing is skipped, and the stream is not touched unless the first waiting character is valid.
    SKIP_WHITESPACE_ // Only tabs, spaces, line feeds & carriage returns are skipped.
}LookaheadMode_;

extern uip_userdata_t all_data[UIP_CONNS];	

//class RF24Client: public Client {
typedef struct{

    unsigned long _startMillis;  // used for timeout measurement
    unsigned long _timeout;  	
    uip_userdata_t* data;
	
	//friend class RF24EthernetClass;
	//friend class RF24Server;
	//friend void serialip_appcall(void);
	//friend void uip_log(char* msg);
}RF24Client;


	/**
	* Basic constructor
	*/	
	void RF24EC_init(void);
	void RF24EC_init_d(uip_userdata_t* conn_data);
        void RF24EC_init_c(struct uip_conn *_conn);


	/**
	* Establish a connection to a specified IP address and port
	*/
	int RF24EC_connect(IPAddress ip, uint16_t port);
    
	/**
	* Establish a connection to a given hostname and port
	* @note UDP must be enabled in uip-conf.h for DNS lookups to work  
	* 
	* @note Tip: DNS lookups generally require a buffer size of 250-300 bytes or greater.
	* Lookups will generally return responses with a single A record if using hostnames like
	* "www.google.com" instead of "google.com" which works well with the default buffer size
	*/
	int RF24EC_connect_h(const char *host, uint16_t port);
    
	/**
	* Read available data into a buffer
	* @code
	* uint8_t buf[size];
    * client.read(buf,size);
	* @endcode
	*/
	int RF24EC_read_b(uint8_t *buf, size_t size);
	
	/**
	* Read data one byte at a time
	* @code
	* char c = client.read();
	* @endcode
	*/
	int RF24EC_read(void);
	
	/**
	* Disconnects from the current active connection
	*/
        void RF24EC_stop(void);  
  
	/**
	* Indicates whether the client is connected or not
	*/
	uint8_t RF24EC_connected(void);
	
	/**
	* Write a single byte of data to the stream
	* @note This will write an entire TCP payload with only 1 byte in it
	*/
    size_t RF24EC_write_b( uint8_t);
	
	/**
	* Write a buffer of data, to be sent in a single TCP packet
	*/
    size_t RF24EC_write(const uint8_t *buf, size_t size);
   
    
    size_t RF24EC_write_s(const char *str);
    

	/**
	* Indicates whether data is available to be read by the client.
	* @return Returns the number of bytes available to be read
	* @note Calling client or server available() keeps the IP stack and RF24Network layer running, so needs to be called regularly,  
    * even when disconnected or delaying for extended periods.  
	*/
	int RF24EC_available(void);
    
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
	
	//int RF24EC_waitAvailable(RF24Client* cli, uint32_t timeout=750);
	int RF24EC_waitAvailable(uint32_t timeout);
    
	/**
	* Read a byte from the incoming buffer without advancing the point of reading
	*/
	int RF24EC_peek(void);
	
	/**
	* Flush all incoming client data from the current connection/buffer
	*/
    void RF24EC_flush(void);
   

   
    bool RF24EC_findUntil(const char * target,const char * terminator);
    bool RF24EC_findUntil_f(const char *target, size_t targetLen,const char *terminate, size_t termLen);  
 
       
    bool RF24EC_find(const char * target);

    int RF24EC_peekNextDigit(LookaheadMode_ lookahead, bool detectDecimal); // returns the next numeric digit in the stream or -1 if timeout
    //long RF24EC_parseInt(RF24Client* cli, LookaheadMode lookahead = SKIP_ALL, char ignore = NO_IGNORE_CHAR);
    long RF24EC_parseInt(LookaheadMode_ lookahead, char ignore );

  typedef struct{
    const char *str;  // string you're searching for
    size_t len;       // length of string you're searching for
    size_t index;     // index used by the search routine.
  }MultiTarget;

    int RF24EC_findMulti(MultiTarget *targets, int tCount);

		
//    operator bool();
//    virtual bool operator==(const EthernetClient&);
//    virtual bool operator!=(const EthernetClient& rhs) { return !this->operator==(rhs); };

    int RF24EC_valid(void);   


    size_t RF24EC__write(uip_userdata_t *,const uint8_t *buf, size_t size);


    int RF24EC_timedRead(void);    // private method to read stream with timeout
    int RF24EC_timedPeek(void);    // private method to peek stream with timeout

 
    int RF24EC__available(uip_userdata_t *);	
    uip_userdata_t* RF24EC__allocateData(void);

#ifdef __cplusplus
}
#endif

#endif
