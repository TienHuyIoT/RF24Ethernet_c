/*
 RF24Server.cpp - Arduino implementation of a uIP wrapper class.
 Copyright (c) 2016 Luis Claudio Gamboa Lopes <lcgamboa@yahoo.com>
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
#include "RF24Ethernet.h"
#include "RF24Server.h"

//#include "uip-conf.h"


static RF24Server_ srv;

/*************************************************************/

void RF24ES_init(uint16_t port) 
{
 srv._port=htons(port);
}

/*************************************************************/

//RF24Client 
void RF24ES_available(void)
{
  //RF24Client cli;
  RF24E_tick();
  uip_userdata_t* data;
  for ( data = &all_data[0]; data < &all_data[UIP_CONNS]; data++ )
    {
        if (data->packets_in != 0 && (((data->state & UIP_CLIENT_CONNECTED) && uip_conns[data->state & UIP_CLIENT_SOCKETS].lport ==srv._port)
              || ((data->state & UIP_CLIENT_REMOTECLOSED) && ((uip_userdata_closed_t *)data)->lport == srv._port))){
		RF24EC_init_d(data);
		return ;//cli;
		}
    }	
  RF24EC_init();
  return ;//cli;
}

/*************************************************************/

void RF24ES_begin(void)
{  
  uip_listen(srv._port);
  RF24E_tick();
}

/*************************************************************/

size_t RF24ES_write_b(uint8_t c)
{
  return RF24ES_write(&c,1);
}

/*************************************************************/

size_t RF24ES_write(const uint8_t *buf, size_t size)
{
  size_t ret = 0;
  uip_userdata_t* data;
  for (data = &all_data[0]; data < &all_data[UIP_CONNS]; data++ )
    {
      if ((data->state & UIP_CLIENT_CONNECTED) && uip_conns[data->state & UIP_CLIENT_SOCKETS].lport ==srv._port)
      {
	//RF24Client cli;
        RF24EC_init();	
        ret += RF24EC__write(data,buf,size);
      }
    }
  return ret;
}

/*************************************************************/
 size_t RF24ES_write_s(const char *str)
 {
      if (str == NULL) return 0;
      return RF24ES_write((const uint8_t *)str, strlen(str));
 }


/*************************************************************/
