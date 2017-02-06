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
ifeq "$(wildcard nbproject/Makefile-local-xc8.mk)" "nbproject/Makefile-local-xc8.mk"
include nbproject/Makefile-local-xc8.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=xc8
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=InteractiveServer_Mesh.c pic_main.c serial.c ../../../RF24_c/utility/XC8/spi.c ../../utility/psock.c ../../utility/timer.c ../../utility/uip-fw.c ../../utility/uip-neighbor.c ../../utility/uip-split.c ../../utility/uip_arp.c ../../utility/uiplib.c ../../clock-arch.c umalloc.c ../../utility/uip.c ../../RF24Client_c.c ../../RF24Ethernet_c.c ../../RF24Server_c.c ../../../RF24_c/RF24.c ../../../RF24Network_c/RF24Network.c ../../../RF24Mesh_c/RF24Mesh.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/InteractiveServer_Mesh.p1 ${OBJECTDIR}/pic_main.p1 ${OBJECTDIR}/serial.p1 ${OBJECTDIR}/_ext/2031907356/spi.p1 ${OBJECTDIR}/_ext/678348748/psock.p1 ${OBJECTDIR}/_ext/678348748/timer.p1 ${OBJECTDIR}/_ext/678348748/uip-fw.p1 ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1 ${OBJECTDIR}/_ext/678348748/uip-split.p1 ${OBJECTDIR}/_ext/678348748/uip_arp.p1 ${OBJECTDIR}/_ext/678348748/uiplib.p1 ${OBJECTDIR}/_ext/43898991/clock-arch.p1 ${OBJECTDIR}/umalloc.p1 ${OBJECTDIR}/_ext/678348748/uip.p1 ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1 ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1 ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1 ${OBJECTDIR}/_ext/381377385/RF24.p1 ${OBJECTDIR}/_ext/1478480717/RF24Network.p1 ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/InteractiveServer_Mesh.p1.d ${OBJECTDIR}/pic_main.p1.d ${OBJECTDIR}/serial.p1.d ${OBJECTDIR}/_ext/2031907356/spi.p1.d ${OBJECTDIR}/_ext/678348748/psock.p1.d ${OBJECTDIR}/_ext/678348748/timer.p1.d ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d ${OBJECTDIR}/_ext/678348748/uip-split.p1.d ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d ${OBJECTDIR}/_ext/678348748/uiplib.p1.d ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d ${OBJECTDIR}/umalloc.p1.d ${OBJECTDIR}/_ext/678348748/uip.p1.d ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d ${OBJECTDIR}/_ext/381377385/RF24.p1.d ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/InteractiveServer_Mesh.p1 ${OBJECTDIR}/pic_main.p1 ${OBJECTDIR}/serial.p1 ${OBJECTDIR}/_ext/2031907356/spi.p1 ${OBJECTDIR}/_ext/678348748/psock.p1 ${OBJECTDIR}/_ext/678348748/timer.p1 ${OBJECTDIR}/_ext/678348748/uip-fw.p1 ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1 ${OBJECTDIR}/_ext/678348748/uip-split.p1 ${OBJECTDIR}/_ext/678348748/uip_arp.p1 ${OBJECTDIR}/_ext/678348748/uiplib.p1 ${OBJECTDIR}/_ext/43898991/clock-arch.p1 ${OBJECTDIR}/umalloc.p1 ${OBJECTDIR}/_ext/678348748/uip.p1 ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1 ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1 ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1 ${OBJECTDIR}/_ext/381377385/RF24.p1 ${OBJECTDIR}/_ext/1478480717/RF24Network.p1 ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1

# Source Files
SOURCEFILES=InteractiveServer_Mesh.c pic_main.c serial.c ../../../RF24_c/utility/XC8/spi.c ../../utility/psock.c ../../utility/timer.c ../../utility/uip-fw.c ../../utility/uip-neighbor.c ../../utility/uip-split.c ../../utility/uip_arp.c ../../utility/uiplib.c ../../clock-arch.c umalloc.c ../../utility/uip.c ../../RF24Client_c.c ../../RF24Ethernet_c.c ../../RF24Server_c.c ../../../RF24_c/RF24.c ../../../RF24Network_c/RF24Network.c ../../../RF24Mesh_c/RF24Mesh.c


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
	${MAKE}  -f nbproject/Makefile-xc8.mk dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/InteractiveServer_Mesh.p1: InteractiveServer_Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/InteractiveServer_Mesh.p1.d 
	@${RM} ${OBJECTDIR}/InteractiveServer_Mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/InteractiveServer_Mesh.p1  InteractiveServer_Mesh.c 
	@-${MV} ${OBJECTDIR}/InteractiveServer_Mesh.d ${OBJECTDIR}/InteractiveServer_Mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/InteractiveServer_Mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pic_main.p1: pic_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_main.p1.d 
	@${RM} ${OBJECTDIR}/pic_main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pic_main.p1  pic_main.c 
	@-${MV} ${OBJECTDIR}/pic_main.d ${OBJECTDIR}/pic_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pic_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/serial.p1: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.p1.d 
	@${RM} ${OBJECTDIR}/serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/serial.p1  serial.c 
	@-${MV} ${OBJECTDIR}/serial.d ${OBJECTDIR}/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2031907356/spi.p1: ../../../RF24_c/utility/XC8/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2031907356" 
	@${RM} ${OBJECTDIR}/_ext/2031907356/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2031907356/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2031907356/spi.p1  ../../../RF24_c/utility/XC8/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/2031907356/spi.d ${OBJECTDIR}/_ext/2031907356/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2031907356/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/psock.p1: ../../utility/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/psock.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/psock.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/psock.p1  ../../utility/psock.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/psock.d ${OBJECTDIR}/_ext/678348748/psock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/psock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/timer.p1: ../../utility/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/timer.p1  ../../utility/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/timer.d ${OBJECTDIR}/_ext/678348748/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-fw.p1: ../../utility/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-fw.p1  ../../utility/uip-fw.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-fw.d ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-neighbor.p1: ../../utility/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-neighbor.p1  ../../utility/uip-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-neighbor.d ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-split.p1: ../../utility/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-split.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-split.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-split.p1  ../../utility/uip-split.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-split.d ${OBJECTDIR}/_ext/678348748/uip-split.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-split.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip_arp.p1: ../../utility/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip_arp.p1  ../../utility/uip_arp.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip_arp.d ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uiplib.p1: ../../utility/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uiplib.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uiplib.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uiplib.p1  ../../utility/uiplib.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uiplib.d ${OBJECTDIR}/_ext/678348748/uiplib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uiplib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/clock-arch.p1: ../../clock-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/clock-arch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/clock-arch.p1  ../../clock-arch.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/clock-arch.d ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/umalloc.p1: umalloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/umalloc.p1.d 
	@${RM} ${OBJECTDIR}/umalloc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/umalloc.p1  umalloc.c 
	@-${MV} ${OBJECTDIR}/umalloc.d ${OBJECTDIR}/umalloc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/umalloc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip.p1: ../../utility/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip.p1  ../../utility/uip.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip.d ${OBJECTDIR}/_ext/678348748/uip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Client_c.p1: ../../RF24Client_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Client_c.p1  ../../RF24Client_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Client_c.d ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1: ../../RF24Ethernet_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1  ../../RF24Ethernet_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.d ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Server_c.p1: ../../RF24Server_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Server_c.p1  ../../RF24Server_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Server_c.d ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/381377385/RF24.p1: ../../../RF24_c/RF24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/381377385" 
	@${RM} ${OBJECTDIR}/_ext/381377385/RF24.p1.d 
	@${RM} ${OBJECTDIR}/_ext/381377385/RF24.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/381377385/RF24.p1  ../../../RF24_c/RF24.c 
	@-${MV} ${OBJECTDIR}/_ext/381377385/RF24.d ${OBJECTDIR}/_ext/381377385/RF24.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/381377385/RF24.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1478480717/RF24Network.p1: ../../../RF24Network_c/RF24Network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1478480717" 
	@${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1478480717/RF24Network.p1  ../../../RF24Network_c/RF24Network.c 
	@-${MV} ${OBJECTDIR}/_ext/1478480717/RF24Network.d ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/720915382/RF24Mesh.p1: ../../../RF24Mesh_c/RF24Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/720915382" 
	@${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/720915382/RF24Mesh.p1  ../../../RF24Mesh_c/RF24Mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/720915382/RF24Mesh.d ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/InteractiveServer_Mesh.p1: InteractiveServer_Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/InteractiveServer_Mesh.p1.d 
	@${RM} ${OBJECTDIR}/InteractiveServer_Mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/InteractiveServer_Mesh.p1  InteractiveServer_Mesh.c 
	@-${MV} ${OBJECTDIR}/InteractiveServer_Mesh.d ${OBJECTDIR}/InteractiveServer_Mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/InteractiveServer_Mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pic_main.p1: pic_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic_main.p1.d 
	@${RM} ${OBJECTDIR}/pic_main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pic_main.p1  pic_main.c 
	@-${MV} ${OBJECTDIR}/pic_main.d ${OBJECTDIR}/pic_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pic_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/serial.p1: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.p1.d 
	@${RM} ${OBJECTDIR}/serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/serial.p1  serial.c 
	@-${MV} ${OBJECTDIR}/serial.d ${OBJECTDIR}/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2031907356/spi.p1: ../../../RF24_c/utility/XC8/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2031907356" 
	@${RM} ${OBJECTDIR}/_ext/2031907356/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2031907356/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2031907356/spi.p1  ../../../RF24_c/utility/XC8/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/2031907356/spi.d ${OBJECTDIR}/_ext/2031907356/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2031907356/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/psock.p1: ../../utility/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/psock.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/psock.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/psock.p1  ../../utility/psock.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/psock.d ${OBJECTDIR}/_ext/678348748/psock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/psock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/timer.p1: ../../utility/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/timer.p1  ../../utility/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/timer.d ${OBJECTDIR}/_ext/678348748/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-fw.p1: ../../utility/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-fw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-fw.p1  ../../utility/uip-fw.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-fw.d ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-fw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-neighbor.p1: ../../utility/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-neighbor.p1  ../../utility/uip-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-neighbor.d ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip-split.p1: ../../utility/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-split.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip-split.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip-split.p1  ../../utility/uip-split.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip-split.d ${OBJECTDIR}/_ext/678348748/uip-split.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip-split.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip_arp.p1: ../../utility/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip_arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip_arp.p1  ../../utility/uip_arp.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip_arp.d ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip_arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uiplib.p1: ../../utility/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uiplib.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uiplib.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uiplib.p1  ../../utility/uiplib.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uiplib.d ${OBJECTDIR}/_ext/678348748/uiplib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uiplib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/clock-arch.p1: ../../clock-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/clock-arch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/clock-arch.p1  ../../clock-arch.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/clock-arch.d ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/clock-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/umalloc.p1: umalloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/umalloc.p1.d 
	@${RM} ${OBJECTDIR}/umalloc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/umalloc.p1  umalloc.c 
	@-${MV} ${OBJECTDIR}/umalloc.d ${OBJECTDIR}/umalloc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/umalloc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/678348748/uip.p1: ../../utility/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/678348748" 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/678348748/uip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/678348748/uip.p1  ../../utility/uip.c 
	@-${MV} ${OBJECTDIR}/_ext/678348748/uip.d ${OBJECTDIR}/_ext/678348748/uip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/678348748/uip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Client_c.p1: ../../RF24Client_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Client_c.p1  ../../RF24Client_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Client_c.d ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Client_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1: ../../RF24Ethernet_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1  ../../RF24Ethernet_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.d ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Ethernet_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/RF24Server_c.p1: ../../RF24Server_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/43898991/RF24Server_c.p1  ../../RF24Server_c.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/RF24Server_c.d ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/RF24Server_c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/381377385/RF24.p1: ../../../RF24_c/RF24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/381377385" 
	@${RM} ${OBJECTDIR}/_ext/381377385/RF24.p1.d 
	@${RM} ${OBJECTDIR}/_ext/381377385/RF24.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/381377385/RF24.p1  ../../../RF24_c/RF24.c 
	@-${MV} ${OBJECTDIR}/_ext/381377385/RF24.d ${OBJECTDIR}/_ext/381377385/RF24.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/381377385/RF24.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1478480717/RF24Network.p1: ../../../RF24Network_c/RF24Network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1478480717" 
	@${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1478480717/RF24Network.p1  ../../../RF24Network_c/RF24Network.c 
	@-${MV} ${OBJECTDIR}/_ext/1478480717/RF24Network.d ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1478480717/RF24Network.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/720915382/RF24Mesh.p1: ../../../RF24Mesh_c/RF24Mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/720915382" 
	@${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d 
	@${RM} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/720915382/RF24Mesh.p1  ../../../RF24Mesh_c/RF24Mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/720915382/RF24Mesh.d ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/720915382/RF24Mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-fd30-ffff --ram=default,-ef4-eff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../RF24_c" -I"../../../RF24_c/utility/XC8" -I"../../../RF24Network_c" -I"../../../RF24Mesh_c" -I"../../" --warn=-3 --asmlist -DXPRJ_xc8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=reentrant:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/InteractiveServer_Mesh.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/xc8
	${RM} -r dist/xc8

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
