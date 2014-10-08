#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/MicroAggregation.o \
	${OBJECTDIR}/Numerical.o \
	${OBJECTDIR}/Numerical_wrap.o \
	${OBJECTDIR}/RankSwap.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libnumericaldll.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libnumericaldll.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libnumericaldll.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -Wl,--kill-at -shared

${OBJECTDIR}/MicroAggregation.o: MicroAggregation.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../Program\ Files/Java/jdk1.8.0_11/include -I../../../../Program\ Files/Java/jdk1.8.0_11/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MicroAggregation.o MicroAggregation.cpp

${OBJECTDIR}/Numerical.o: Numerical.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../Program\ Files/Java/jdk1.8.0_11/include -I../../../../Program\ Files/Java/jdk1.8.0_11/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Numerical.o Numerical.cpp

.NO_PARALLEL:Numerical_wrap.cpp Numerical_wrap.h
Numerical_wrap.cpp Numerical_wrap.h: Numerical.swg 
	@echo Performing Custom Build Step
	C:\Users\Gebruiker\Downloads\swigwin-3.0.2\swigwin-3.0.2\swig.exe -c++ -java -package muargus.extern.dataengine -outdir ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM} -o Numerical_wrap.cpp Numerical.swg

${OBJECTDIR}/Numerical_wrap.o: Numerical_wrap.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../Program\ Files/Java/jdk1.8.0_11/include -I../../../../Program\ Files/Java/jdk1.8.0_11/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Numerical_wrap.o Numerical_wrap.cpp

${OBJECTDIR}/RankSwap.o: RankSwap.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../Program\ Files/Java/jdk1.8.0_11/include -I../../../../Program\ Files/Java/jdk1.8.0_11/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RankSwap.o RankSwap.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libnumericaldll.${CND_DLIB_EXT}
	${RM} Numerical_wrap.cpp Numerical_wrap.h

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
