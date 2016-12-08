#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sdcc.mk)" "nbproject/Makefile-local-sdcc.mk"
include nbproject/Makefile-local-sdcc.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sdcc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=InteractiveServer_Mesh.c pic_main.c serial.c ../../../RF24_c/utility/XC8/spi.c ../../utility/psock.c ../../utility/timer.c ../../utility/uip-fw.c ../../utility/uip-neighbor.c ../../utility/uip-split.c ../../utility/uip_arp.c ../../utility/uiplib.c umalloc.c ../../utility/uip.c ../../RF24Client_c.c ../../RF24Ethernet_c.c ../../RF24Server_c.c ../../../RF24Mesh_c/RF24Mesh_c.c ../../../RF24Network_c/RF24Network_c.c ../../../RF24_c/RF24_c.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/InteractiveServer_Mesh.o ${OBJECTDIR}/pic_main.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/_ext/2031907356/spi.o ${OBJECTDIR}/_ext/678348748/psock.o ${OBJECTDIR}/_ext/678348748/timer.o ${OBJECTDIR}/_ext/678348748/uip-fw.o ${OBJECTDIR}/_ext/678348748/uip-neighbor.o ${OBJECTDIR}/_ext/678348748/uip-split.o ${OBJECTDIR}/_ext/678348748/uip_arp.o ${OBJECTDIR}/_ext/678348748/uiplib.o ${OBJECTDIR}/umalloc.o ${OBJECTDIR}/_ext/678348748/uip.o ${OBJECTDIR}/_ext/43898991/RF24Client_c.o ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o ${OBJECTDIR}/_ext/43898991/RF24Server_c.o ${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o ${OBJECTDIR}/_ext/1478480717/RF24Network_c.o ${OBJECTDIR}/_ext/381377385/RF24_c.o
POSSIBLE_DEPFILES=${OBJECTDIR}/InteractiveServer_Mesh.o.d ${OBJECTDIR}/pic_main.o.d ${OBJECTDIR}/serial.o.d ${OBJECTDIR}/_ext/2031907356/spi.o.d ${OBJECTDIR}/_ext/678348748/psock.o.d ${OBJECTDIR}/_ext/678348748/timer.o.d ${OBJECTDIR}/_ext/678348748/uip-fw.o.d ${OBJECTDIR}/_ext/678348748/uip-neighbor.o.d ${OBJECTDIR}/_ext/678348748/uip-split.o.d ${OBJECTDIR}/_ext/678348748/uip_arp.o.d ${OBJECTDIR}/_ext/678348748/uiplib.o.d ${OBJECTDIR}/umalloc.o.d ${OBJECTDIR}/_ext/678348748/uip.o.d ${OBJECTDIR}/_ext/43898991/RF24Client_c.o.d ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o.d ${OBJECTDIR}/_ext/43898991/RF24Server_c.o.d ${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o.d ${OBJECTDIR}/_ext/1478480717/RF24Network_c.o.d ${OBJECTDIR}/_ext/381377385/RF24_c.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/InteractiveServer_Mesh.o ${OBJECTDIR}/pic_main.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/_ext/2031907356/spi.o ${OBJECTDIR}/_ext/678348748/psock.o ${OBJECTDIR}/_ext/678348748/timer.o ${OBJECTDIR}/_ext/678348748/uip-fw.o ${OBJECTDIR}/_ext/678348748/uip-neighbor.o ${OBJECTDIR}/_ext/678348748/uip-split.o ${OBJECTDIR}/_ext/678348748/uip_arp.o ${OBJECTDIR}/_ext/678348748/uiplib.o ${OBJECTDIR}/umalloc.o ${OBJECTDIR}/_ext/678348748/uip.o ${OBJECTDIR}/_ext/43898991/RF24Client_c.o ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o ${OBJECTDIR}/_ext/43898991/RF24Server_c.o ${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o ${OBJECTDIR}/_ext/1478480717/RF24Network_c.o ${OBJECTDIR}/_ext/381377385/RF24_c.o

# Source Files
SOURCEFILES=InteractiveServer_Mesh.c pic_main.c serial.c ../../../RF24_c/utility/XC8/spi.c ../../utility/psock.c ../../utility/timer.c ../../utility/uip-fw.c ../../utility/uip-neighbor.c ../../utility/uip-split.c ../../utility/uip_arp.c ../../utility/uiplib.c umalloc.c ../../utility/uip.c ../../RF24Client_c.c ../../RF24Ethernet_c.c ../../RF24Server_c.c ../../../RF24Mesh_c/RF24Mesh_c.c ../../../RF24Network_c/RF24Network_c.c ../../../RF24_c/RF24_c.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sdcc.mk dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/InteractiveServer_Mesh.o: InteractiveServer_Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/InteractiveServer_Mesh.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 InteractiveServer_Mesh.c  -o${OBJECTDIR}/InteractiveServer_Mesh.o
	
${OBJECTDIR}/pic_main.o: pic_main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/pic_main.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 pic_main.c  -o${OBJECTDIR}/pic_main.o
	
${OBJECTDIR}/serial.o: serial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/serial.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 serial.c  -o${OBJECTDIR}/serial.o
	
${OBJECTDIR}/_ext/2031907356/spi.o: ../../../RF24_c/utility/XC8/spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2031907356 
	${RM} ${OBJECTDIR}/_ext/2031907356/spi.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24_c/utility/XC8/spi.c  -o${OBJECTDIR}/_ext/2031907356/spi.o
	
${OBJECTDIR}/_ext/678348748/psock.o: ../../utility/psock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/psock.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/psock.c  -o${OBJECTDIR}/_ext/678348748/psock.o
	
${OBJECTDIR}/_ext/678348748/timer.o: ../../utility/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/timer.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/timer.c  -o${OBJECTDIR}/_ext/678348748/timer.o
	
${OBJECTDIR}/_ext/678348748/uip-fw.o: ../../utility/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-fw.c  -o${OBJECTDIR}/_ext/678348748/uip-fw.o
	
${OBJECTDIR}/_ext/678348748/uip-neighbor.o: ../../utility/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-neighbor.c  -o${OBJECTDIR}/_ext/678348748/uip-neighbor.o
	
${OBJECTDIR}/_ext/678348748/uip-split.o: ../../utility/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-split.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-split.c  -o${OBJECTDIR}/_ext/678348748/uip-split.o
	
${OBJECTDIR}/_ext/678348748/uip_arp.o: ../../utility/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip_arp.c  -o${OBJECTDIR}/_ext/678348748/uip_arp.o
	
${OBJECTDIR}/_ext/678348748/uiplib.o: ../../utility/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uiplib.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uiplib.c  -o${OBJECTDIR}/_ext/678348748/uiplib.o
	
${OBJECTDIR}/umalloc.o: umalloc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/umalloc.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 umalloc.c  -o${OBJECTDIR}/umalloc.o
	
${OBJECTDIR}/_ext/678348748/uip.o: ../../utility/uip.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip.c  -o${OBJECTDIR}/_ext/678348748/uip.o
	
${OBJECTDIR}/_ext/43898991/RF24Client_c.o: ../../RF24Client_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Client_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Client_c.o
	
${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o: ../../RF24Ethernet_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Ethernet_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o
	
${OBJECTDIR}/_ext/43898991/RF24Server_c.o: ../../RF24Server_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Server_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Server_c.o
	
${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o: ../../../RF24Mesh_c/RF24Mesh_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/720915382 
	${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24Mesh_c/RF24Mesh_c.c  -o${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o
	
${OBJECTDIR}/_ext/1478480717/RF24Network_c.o: ../../../RF24Network_c/RF24Network_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1478480717 
	${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24Network_c/RF24Network_c.c  -o${OBJECTDIR}/_ext/1478480717/RF24Network_c.o
	
${OBJECTDIR}/_ext/381377385/RF24_c.o: ../../../RF24_c/RF24_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/381377385 
	${RM} ${OBJECTDIR}/_ext/381377385/RF24_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24_c/RF24_c.c  -o${OBJECTDIR}/_ext/381377385/RF24_c.o
	
else
${OBJECTDIR}/InteractiveServer_Mesh.o: InteractiveServer_Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/InteractiveServer_Mesh.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 InteractiveServer_Mesh.c  -o${OBJECTDIR}/InteractiveServer_Mesh.o
	
${OBJECTDIR}/pic_main.o: pic_main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/pic_main.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 pic_main.c  -o${OBJECTDIR}/pic_main.o
	
${OBJECTDIR}/serial.o: serial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/serial.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 serial.c  -o${OBJECTDIR}/serial.o
	
${OBJECTDIR}/_ext/2031907356/spi.o: ../../../RF24_c/utility/XC8/spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2031907356 
	${RM} ${OBJECTDIR}/_ext/2031907356/spi.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24_c/utility/XC8/spi.c  -o${OBJECTDIR}/_ext/2031907356/spi.o
	
${OBJECTDIR}/_ext/678348748/psock.o: ../../utility/psock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/psock.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/psock.c  -o${OBJECTDIR}/_ext/678348748/psock.o
	
${OBJECTDIR}/_ext/678348748/timer.o: ../../utility/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/timer.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/timer.c  -o${OBJECTDIR}/_ext/678348748/timer.o
	
${OBJECTDIR}/_ext/678348748/uip-fw.o: ../../utility/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-fw.c  -o${OBJECTDIR}/_ext/678348748/uip-fw.o
	
${OBJECTDIR}/_ext/678348748/uip-neighbor.o: ../../utility/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-neighbor.c  -o${OBJECTDIR}/_ext/678348748/uip-neighbor.o
	
${OBJECTDIR}/_ext/678348748/uip-split.o: ../../utility/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip-split.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip-split.c  -o${OBJECTDIR}/_ext/678348748/uip-split.o
	
${OBJECTDIR}/_ext/678348748/uip_arp.o: ../../utility/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip_arp.c  -o${OBJECTDIR}/_ext/678348748/uip_arp.o
	
${OBJECTDIR}/_ext/678348748/uiplib.o: ../../utility/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uiplib.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uiplib.c  -o${OBJECTDIR}/_ext/678348748/uiplib.o
	
${OBJECTDIR}/umalloc.o: umalloc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${RM} ${OBJECTDIR}/umalloc.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 umalloc.c  -o${OBJECTDIR}/umalloc.o
	
${OBJECTDIR}/_ext/678348748/uip.o: ../../utility/uip.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/678348748 
	${RM} ${OBJECTDIR}/_ext/678348748/uip.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../utility/uip.c  -o${OBJECTDIR}/_ext/678348748/uip.o
	
${OBJECTDIR}/_ext/43898991/RF24Client_c.o: ../../RF24Client_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Client_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Client_c.o
	
${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o: ../../RF24Ethernet_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Ethernet_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.o
	
${OBJECTDIR}/_ext/43898991/RF24Server_c.o: ../../RF24Server_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/43898991 
	${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../RF24Server_c.c  -o${OBJECTDIR}/_ext/43898991/RF24Server_c.o
	
${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o: ../../../RF24Mesh_c/RF24Mesh_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/720915382 
	${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24Mesh_c/RF24Mesh_c.c  -o${OBJECTDIR}/_ext/720915382/RF24Mesh_c.o
	
${OBJECTDIR}/_ext/1478480717/RF24Network_c.o: ../../../RF24Network_c/RF24Network_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1478480717 
	${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24Network_c/RF24Network_c.c  -o${OBJECTDIR}/_ext/1478480717/RF24Network_c.o
	
${OBJECTDIR}/_ext/381377385/RF24_c.o: ../../../RF24_c/RF24_c.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/381377385 
	${RM} ${OBJECTDIR}/_ext/381377385/RF24_c.o 
	${MP_CC} --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -c -mpic16 -p18f4620 ../../../RF24_c/RF24_c.c  -o${OBJECTDIR}/_ext/381377385/RF24_c.o
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -mpic16 -p18f4620 ${OBJECTFILES} -odist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
else
dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -I"../../" -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Mesh_c" -I"../../../RF24Network_c" -I"../../utility"  -Wl,-s,18f4620_g.lkr  --debug -mpic16 -p18f4620 ${OBJECTFILES} -odist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sdcc
	${RM} -r dist/sdcc

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
