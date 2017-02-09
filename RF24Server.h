/*
 RF24Server.h - Arduino implementation of a uIP wrapper class.
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

#ifndef RF24SERVER_H
#define RF24SERVER_H

#ifdef __cplusplus
extern "C" {
#endif

//#include "Server.h"
#include "RF24Client.h"
#include "ethernet_comp.h"

typedef struct{
  uint16_t _port;
}RF24Server_;

  void RF24ES_init(uint16_t);
  void RF24ES_available(void);
  void RF24ES_begin(void);
  size_t RF24ES_write_b(uint8_t);
  size_t RF24ES_write(const uint8_t *buf, size_t size);
  size_t RF24ES_write_s(const char *str);

#ifdef __cplusplus
}
#endif

#endif
