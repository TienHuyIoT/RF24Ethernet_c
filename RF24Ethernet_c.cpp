/*
 RF24Ethernet.cpp - Arduino implementation of a uIP wrapper class.
 Copyright (c) 2014 tmrh20@gmail.com, github.com/TMRh20 
 Copyright (c) 2013 Norbert Truchsess <norbert.truchsess@t-online.de>
 All rights reserved.

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

#include "RF24Ethernet_c.h"
				   
IPAddress RF24E__dnsServerAddress;
//DhcpClass* RF24E__dhcp(NULL);

/*************************************************************/
#if defined (RF24_TAP) 
void RF24E_init(RF24EthernetClass * ec,RF24* _radio, RF24Network* _network)
	//fn_uip_cb(NULL)
{
  ec->radio=_radio;
  ec->network=_network;
}
#else // Using RF24Mesh
void RF24E_init(RF24EthernetClass * ec,RF24* _radio, RF24Network* _network, RF24Mesh* _mesh)
	//fn_uip_cb(NULL)
{
  ec->radio=_radio;
  ec->network=_network;
  ec->mesh=_mesh;
}
#endif
/*************************************************************/

void RF24E_update(RF24EthernetClass * ec) {
  RF24E_tick(ec);
}

/*************************************************************/
#if defined ARDUINO_ARCH_AVR
void yield(RF24EthernetClass * ec) {
  RF24E_update(ec);
}
#endif
/*************************************************************/

void RF24E_use_device(RF24EthernetClass * ec)
{
// Kept for backwards compatibility only
}

/*******************************************************/

/*******************************************************/
void RF24E_setMac(RF24EthernetClass * ec,uint16_t address){
	
	if(!ec->network->multicastRelay){ // Radio has not been started yet
	  RF24_begin(ec->radio);
	}	
	
	#if defined (RF24_TAP)
	const uint8_t mac[6] = {0x52,0x46,0x32,0x34,(uint8_t)address,(uint8_t)(address>>8)};
	//printf("MAC: %o %d\n",address,mac[0]);
	
	  uip_seteth_addr(mac);
   	  network.multicastRelay = 1;
	#endif
	ec->RF24_Channel = ec->RF24_Channel ? ec->RF24_Channel : 97;
	RF24N_begin_d(ec->network,ec->RF24_Channel, address);
}

/*******************************************************/

void RF24E_setChannel(RF24EthernetClass * ec,uint8_t channel){
	
	ec->RF24_Channel = channel;
	if(ec->network->multicastRelay){ // Radio has not been started yet
	  RF24_setChannel(ec->radio,ec->RF24_Channel);
	}
}

/*******************************************************/

void RF24E_begin(RF24EthernetClass * ec,IPAddress ip)
{
IPAddress dns = ip;
dns[3] = 1;
RF24E_begin(ec,ip, dns);
}

void RF24E_begin(RF24EthernetClass * ec,IPAddress ip, IPAddress dns)
{
IPAddress gateway = ip;
gateway[3] = 1;
RF24E_begin(ec, ip, dns, gateway);
}

void RF24E_begin(RF24EthernetClass * ec,IPAddress ip, IPAddress dns, IPAddress gateway)
{
IPAddress subnet(255, 255, 255, 0);
RF24E_begin(ec,ip, dns, gateway, subnet);
}

void RF24E_begin(RF24EthernetClass * ec,IPAddress ip, IPAddress dns, IPAddress gateway, IPAddress subnet)
{
//init(mac);
RF24E_configure(ec,ip,dns,gateway,subnet);
}

/*******************************************************/

void RF24E_configure(RF24EthernetClass * ec,IPAddress ip, IPAddress dns, IPAddress gateway, IPAddress subnet) {

  #if !defined (RF24_TAP) // Using RF24Mesh
    RF24M_setNodeID(ec->mesh,ip[3]);
  #endif
  
uip_buf = (uint8_t*) &ec->network->frag_ptr->message_buffer[0];

uip_ipaddr_t ipaddr;
uip_ip_addr(ipaddr, ip);
uip_sethostaddr(ipaddr);
uip_ip_addr(ipaddr, gateway);
uip_setdraddr(ipaddr);
uip_ip_addr(ipaddr, subnet);
uip_setnetmask(ipaddr);
ec->_dnsServerAddress = dns;

	timer_set(&ec->periodic_timer, CLOCK_SECOND / UIP_TIMER_DIVISOR);
	//timer_set(&this->periodic_timer, CLOCK_SECOND / 4);
	
	#if defined (RF24_TAP)
//	timer_set(&this->arp_timer, CLOCK_SECOND * 10);
	timer_set(&ec->arp_timer, CLOCK_SECOND * 2);
	#endif
	
	uip_init();
	#if defined (RF24_TAP)
	uip_arp_init();	
	#endif

}

/*******************************************************/

void RF24E_set_gateway(RF24EthernetClass * ec,IPAddress gwIP)
{
  uip_ipaddr_t ipaddr;
  uip_ip_addr(ipaddr, gwIP);
  uip_setdraddr(ipaddr);  
}

/*******************************************************/

void RF24E_listen(RF24EthernetClass * ec,uint16_t port)
{
  uip_listen(HTONS(port));
}

/*******************************************************/
 
IPAddress RF24E_localIP(RF24EthernetClass * ec) {
IPAddress ret;
uip_ipaddr_t a;
uip_gethostaddr(a);
return ip_addr_uip(a);
}

/*******************************************************/

IPAddress RF24E_subnetMask(RF24EthernetClass * ec) {
IPAddress ret;
uip_ipaddr_t a;
uip_getnetmask(a);
return ip_addr_uip(a);
}

/*******************************************************/

IPAddress RF24E_gatewayIP(RF24EthernetClass * ec) {
IPAddress ret;
uip_ipaddr_t a;
uip_getdraddr(a);
return ip_addr_uip(a);
}

/*******************************************************/

IPAddress RF24E_dnsServerIP(RF24EthernetClass * ec) {
return ec->_dnsServerAddress;
}

/*******************************************************/

void RF24E_tick(RF24EthernetClass * ec) {
    #if defined (ARDUINO_ARCH_ESP8266)
      RF24E_yield(ec);
    #endif
	if(RF24N_update(ec->network) == EXTERNAL_DATA_TYPE){
		uip_len = ec->network->frag_ptr->message_size;
	}

    #if !defined (RF24_TAP)
	if(uip_len > 0) {
	  uip_input();
	  if(uip_len > 0) {
	    RF24E_network_send(ec);	
	  }
	} else if(timer_expired(&Ethernet.periodic_timer)) {
      timer_reset(&Ethernet.periodic_timer);
      for(int i = 0; i < UIP_CONNS; i++) {
	    uip_periodic(i);
	    /* If the above function invocation resulted in data that
	    should be sent out on the network, the global variable
	    uip_len is set to a value > 0. */
	    if(uip_len > 0) {
	      RF24E_network_send(ec);
	    }
      }
	}
	#else
    if(uip_len > 0) {
      if(BUF->type == htons(UIP_ETHTYPE_IP)) {
	  uip_arp_ipin();
	  uip_input();
	/* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
	if(uip_len > 0) {
	  uip_arp_out();
	  network_send();
	}
      } else if(BUF->type == htons(UIP_ETHTYPE_ARP)) {
	    uip_arp_arpin();
	/* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
	if(uip_len > 0) {
	  network_send();
	}
      }

    } else if(timer_expired(&Ethernet.periodic_timer)) {
      timer_reset(&Ethernet.periodic_timer);
      for(int i = 0; i < UIP_CONNS; i++) {
	    uip_periodic(i);
	   /* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
	   if(uip_len > 0) {
	     uip_arp_out();
	     network_send();
	  }
    }
    #endif
#if UIP_UDP
      for(int i = 0; i < UIP_UDP_CONNS; i++) {
	uip_udp_periodic(i);
	/* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
	if(uip_len > 0) {
	  //uip_arp_out();
	  //network_send();
	  RF24UDP::_send((uip_udp_userdata_t *)(uip_udp_conns[i].appstate));
	}
      }
#endif /* UIP_UDP */
#if defined (RF24_TAP)      
      /* Call the ARP timer function every 10 seconds. */

	if(timer_expired(&Ethernet.arp_timer)) {
	  timer_reset(&Ethernet.arp_timer);
	  uip_arp_timer();
    }

  }

#endif //RF24_TAP
}


boolean RF24E_network_send(RF24EthernetClass * ec)
{
		RF24NetworkHeader headerOut;
		RF24NH_init(&headerOut,00,EXTERNAL_DATA_TYPE);
		//while(millis() - RF24Ethernet.lastRadio < 1){}

		  bool ok = RF24N_write_m(ec->network,&headerOut,uip_buf,uip_len);
		//#endif
		
		#if defined ETH_DEBUG_L1 || defined ETH_DEBUG_L2
		if(!ok){
		  Serial.println(); Serial.print(millis()); Serial.println(F(" *** RF24Ethernet Network Write Fail ***")); 
		}
		#endif
		#if defined ETH_DEBUG_L2
		if(ok){
		  Serial.println(); Serial.print(millis()); Serial.println(F(" RF24Ethernet Network Write OK")); 
		}
		#endif
		//RF24Ethernet.packetstate &= ~UIPETHERNET_SENDPACKET;
                
		return ok;
}

/*******************************************************/
/*
void uipudp_appcall(){

}*/

/*******************************************************/

