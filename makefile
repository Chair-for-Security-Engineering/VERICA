##############################################################################################################
## COMPANY     : Ruhr-Universität Bochum, Chair for Security Engineering									##
## AUTHOR      : Pascal Sasdrich (pascal.sasdrich@rub.de)													##
## DESCRIPTION : Simple and configurable C/C++ Makefile														##
##																											##
## Copyright (c) 2020, Pascal Sasdrich. All rights reserved.												##
##############################################################################################################

##############################################################################################################
## CONFIGURATION																							##
##############################################################################################################

# DIRECTORIES
TEST_DIR		:= ./unittests/VERICA
SOURCE_DIR	 	:= ./src
INCLUDE_DIR		:= ./inc
LIBRARY_DIR		:= ./lib
BINARY_DIR		:= ./bin
BUILD_DIR		:= ./build

# COMPILER/LINKER OPTIONS
CC					:= gcc
C_RELEASE_FLAGS		:= -m64 -fopenmp -march=native -O3 -fomit-frame-pointer -std=c11 -g
C_PROFILE_FLAGS		:= -m64 -fopenmp -march=native -O3 -fno-omit-frame-pointer -std=c11 -g
C_COVERAGE_FLAGS	:= -m64 -fprofile-arcs -ftest-coverage -fPIC -fopenmp -march=native -O0 -fno-omit-frame-pointer -std=c11 -g
C_DEBUG_FLAGS		:= -Wall -Wextra -pedantic -m64 -fopenmp -march=native -g3 -Og -fsanitize=address -std=c11
C_TEST_FLAGS		:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c11 -D UNITTEST
C_FULLTEST_FLAGS	:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c11 -D UNITTEST -D FULLTEST
C_MERGETEST_FLAGS	:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c11 -D UNITTEST -D MERGETEST

CXX					:= g++
CXX_RELEASE_FLAGS	:= -m64 -fopenmp -march=native -O3 -fomit-frame-pointer -std=c++17 -g
CXX_PROFILE_FLAGS	:= -m64 -fopenmp -march=native -O3 -fno-omit-frame-pointer -std=c++17 -g
CXX_COVERAGE_FLAGS	:= -m64 -fprofile-arcs -ftest-coverage -fopenmp -march=native -O0 -fno-omit-frame-pointer -std=c++17 -g
CXX_DEBUG_FLAGS		:= -Wall -Wextra -pedantic -m64 -fopenmp -march=native -g3 -Og -fsanitize=address -std=c++17
CXX_TEST_FLAGS		:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c++17 -D UNITTEST
CXX_FULLTEST_FLAGS	:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c++17 -D UNITTEST -D FULLTEST
CXX_MERGETEST_FLAGS	:= -m64 -fopenmp -march=native -O0 -fomit-frame-pointer -fprofile-arcs -ftest-coverage -std=c++17 -D UNITTEST -D MERGETEST

LD_RELEASE_FLAGS	:= -m64 -fopenmp -Wl,-rpath=$(LIBRARY_DIR)
LD_PROFILE_FLAGS	:=  $(LD_RELEASE_FLAGS)
LD_COVERAGE_FLAGS	:=  $(LD_RELEASE_FLAGS) -fprofile-arcs -ftest-coverage
LD_DEBUG_FLAGS		:= -m64 -fopenmp -Wl,-rpath=$(LIBRARY_DIR) -fsanitize=address
LD_TEST_FLAGS		:= -m64 -fopenmp -Wl,-rpath=$(LIBRARY_DIR) -D UNITTEST
LD_FULLTEST_FLAGS	:= -m64 -fopenmp -Wl,-rpath=$(LIBRARY_DIR) -D UNITTEST -D FULLTEST
LD_MERGETEST_FLAGS	:= -m64 -fopenmp -Wl,-rpath=$(LIBRARY_DIR) -D UNITTEST -D MERGETEST

# EXTERNAL INCLUDES
INCLUDES			:= -I $(INCLUDE_DIR) -I "/home/gitlab-runner/boost" -I "./inc/cudd"

# LIBRARIES
LIB_RELEASE			:= -lcudd -lboost_program_options
LIB_PROFILE			:= $(LIB_RELEASE)
LIB_COVERAGE		:= $(LIB_RELEASE)
LIB_DEBUG			:= $(LIB_RELEASE)
LIB_TEST			:= $(LIB_RELEASE) -lboost_unit_test_framework

# TARGET PROGRAM NAME
TARGET				:= verica

# DEFAULT VERBOSITY
VERBOSITY			:= 1

##############################################################################################################
## CORE																										##
##############################################################################################################

.PHONY: all build check clean compile debug test fulltest mergetest release profile coverage

# store make invocation time
START_TIME := $(shell date +%s%3N)

# if verbosity is set to 0, pipe outputs to null and supress command printing
ifeq ($(VERBOSITY),0)
	SUPPRESS := @
	PIPE := > /dev/null
endif

# tell make to not print spam on recursive calls
MAKEFLAGS += --no-print-directory

# clang/gcc options to generate dependency files
DEPENDENCYFLAGS = # -MT $@ -MMD -MP -MF $(OBJECT_DIR)/$*.d

# select appropriate flags
ifeq ($(DEBUG),0)
	C_FLAGS 	= $(C_RELEASE_FLAGS)
	CXX_FLAGS 	= $(CXX_RELEASE_FLAGS)
	LD_FLAGS 	= $(LD_RELEASE_FLAGS)
	LIBRARIES	= $(LIB_RELEASE)
endif
ifeq ($(DEBUG),1)
	C_FLAGS 	= $(C_DEBUG_FLAGS)
	CXX_FLAGS 	= $(CXX_DEBUG_FLAGS)
	LD_FLAGS 	= $(LD_DEBUG_FLAGS)
	LIBRARIES	= $(LIB_DEBUG)
endif
ifeq ($(DEBUG),2)
	C_FLAGS 	= $(C_TEST_FLAGS)
	CXX_FLAGS 	= $(CXX_TEST_FLAGS)
	LD_FLAGS 	= $(LD_TEST_FLAGS)
	LIBRARIES	= $(LIB_TEST)
endif
ifeq ($(DEBUG),3)
	C_FLAGS 	= $(C_FULLTEST_FLAGS)
	CXX_FLAGS 	= $(CXX_FULLTEST_FLAGS)
	LD_FLAGS 	= $(LD_FULLTEST_FLAGS)
	LIBRARIES	= $(LIB_TEST)
endif
ifeq ($(DEBUG),4)
	C_FLAGS 	= $(C_MERGETEST_FLAGS)
	CXX_FLAGS 	= $(CXX_MERGETEST_FLAGS)
	LD_FLAGS 	= $(LD_MERGETEST_FLAGS)
	LIBRARIES	= $(LIB_TEST)
endif
ifeq ($(DEBUG),5)
	C_FLAGS 	= $(C_PROFILE_FLAGS)
	CXX_FLAGS 	= $(CXX_PROFILE_FLAGS)
	LD_FLAGS 	= $(LD_PROFILE_FLAGS)
	LIBRARIES	= $(LIB_PROFILE)
endif
ifeq ($(DEBUG),6)
	C_FLAGS 	= $(C_COVERAGE_FLAGS)
	CXX_FLAGS 	= $(CXX_COVERAGE_FLAGS)
	LD_FLAGS 	= $(LD_COVERAGE_FLAGS)
	LIBRARIES	= $(LIB_COVERAGE)
endif

# list all .c and .cpp source files
C_SOURCES	:= $(shell find $(SOURCE_DIR) -name '*.c' | sort -k 1nr | cut -f2-)
CXX_SOURCES	:= $(shell find $(SOURCE_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)

# create object file names in the obj directory
OBJECTS := $(patsubst $(SOURCE_DIR)/%,$(OBJECT_DIR)/%, $(C_SOURCES:.c=.o)) $(patsubst $(SOURCE_DIR)/%,$(OBJECT_DIR)/%, $(CXX_SOURCES:.cpp=.o))

ifeq ($(DEBUG),2) #(normal TEST)
# list all .c and .cpp test source files
C_SOURCES	= $(shell find $(TEST_DIR) -name '*.c' | sort -k 1nr | cut -f2-)
CXX_SOURCES	= $(shell find $(TEST_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)

# create test object file names in the obj directory
OBJECTS += $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(C_SOURCES:.c=.o)) $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(CXX_SOURCES:.cpp=.o))
endif

ifeq ($(DEBUG),3) #(FULLTEST)
# list all .c and .cpp test source files
C_SOURCES	= $(shell find $(TEST_DIR) -name '*.c' | sort -k 1nr | cut -f2-)
CXX_SOURCES	= $(shell find $(TEST_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)

# create test object file names in the obj directory
OBJECTS += $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(C_SOURCES:.c=.o)) $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(CXX_SOURCES:.cpp=.o))
endif

ifeq ($(DEBUG),4) #(MERGETEST)
# list all .c and .cpp test source files
C_SOURCES	= $(shell find $(TEST_DIR) -name '*.c' | sort -k 1nr | cut -f2-)
CXX_SOURCES	= $(shell find $(TEST_DIR) -name '*.cpp' | sort -k 1nr | cut -f2-)

# create test object file names in the obj directory
OBJECTS += $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(C_SOURCES:.c=.o)) $(patsubst $(TEST_DIR)/%,$(OBJECT_DIR)/%, $(CXX_SOURCES:.cpp=.o))
endif

#select appropriate linker
ifeq ($(CXX_SOURCES),)
	LINK	:= $(CC) $(C_FLAGS)
else
	LINK	:= $(CXX) $(CXX_FLAGS)
endif

##############################################################################################################
## USER TARGETS																								##
##############################################################################################################

all: test debug release

clean:
	@echo  Removing build artifacts...
	-@rm -rvf $(BUILD_DIR)/*
	-@rm -rvf $(BINARY_DIR)/*

coverage:
	@+make compile DEBUG=6 TARGET_DIR=$(BINARY_DIR)/coverage OBJECT_DIR=$(BUILD_DIR)/coverage

profile:
	@+make compile DEBUG=5 TARGET_DIR=$(BINARY_DIR)/profile OBJECT_DIR=$(BUILD_DIR)/profile

mergetest:
	@+make compile DEBUG=4 TARGET_DIR=$(BINARY_DIR)/mergetest OBJECT_DIR=$(BUILD_DIR)/mergetest

fulltest:
	@+make compile DEBUG=3 TARGET_DIR=$(BINARY_DIR)/fulltest OBJECT_DIR=$(BUILD_DIR)/fulltest

test:
	@+make compile DEBUG=2 TARGET_DIR=$(BINARY_DIR)/test OBJECT_DIR=$(BUILD_DIR)/test

debug:
	@+make compile DEBUG=1 TARGET_DIR=$(BINARY_DIR)/debug OBJECT_DIR=$(BUILD_DIR)/debug

release:
	@+make compile DEBUG=0 TARGET_DIR=$(BINARY_DIR)/release OBJECT_DIR=$(BUILD_DIR)/release

help:

##############################################################################################################
## INTERNAL TARGETS																							##
##############################################################################################################

check:
ifeq ($(TARGET_DIR),)
	$(info Unsupported command.)
	$(error )
endif

compile: check build $(TARGET_DIR)/$(TARGET)
	@diff=$$(($(shell date +%s%3N) - $(START_TIME))); echo 'Build completed in '$$(($$diff / 1000))'.'$$(($$diff % 1000))'s.'
	@echo

build: check
ifeq ($(DEBUG), 0)
	@echo '____ BUILDING (RELEASE) ____'
endif
ifeq ($(DEBUG), 1)
	@echo '_____ BUILDING (DEBUG) _____'
endif
ifeq ($(DEBUG), 2)
	@echo '____ BUILDING (TEST) ____'
endif
ifeq ($(DEBUG), 3)
	@echo '____ BUILDING (FULLTEST) ____'
endif
ifeq ($(DEBUG), 4)
	@echo '____ BUILDING (MERGETEST) ____'
endif
ifeq ($(DEBUG), 5)
	@echo '____ BUILDING (PROFILE) ____'
endif
ifeq ($(DEBUG), 6)
	@echo '____ BUILDING (COVERAGE) ____'
endif
	@mkdir -p $(TARGET_DIR)
	@mkdir -p $(OBJECT_DIR)

# compile .c files
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.c
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CC) $(DEPENDENCYFLAGS) $(C_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@

# compile .cpp files
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.cpp
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CXX) $(DEPENDENCYFLAGS) $(CXX_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@

ifeq ($(DEBUG), 2) #(normal TEST)
# compile test .c files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.c
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CC) $(DEPENDENCYFLAGS) $(C_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@

# compile test .cpp files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.cpp
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CXX) $(DEPENDENCYFLAGS) $(CXX_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@
endif

ifeq ($(DEBUG), 3) #(FULLTEST)
# compile test .c files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.c
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CC) $(DEPENDENCYFLAGS) $(C_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@

# compile test .cpp files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.cpp
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CXX) $(DEPENDENCYFLAGS) $(CXX_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@
endif

ifeq ($(DEBUG), 4) #(MERGETEST)
# compile test .c files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.c
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CC) $(DEPENDENCYFLAGS) $(C_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@

# compile test .cpp files
$(OBJECT_DIR)/%.o: $(TEST_DIR)/%.cpp
	@mkdir -p '$(dir $@)'
	$(SUPPRESS)$(CXX) $(DEPENDENCYFLAGS) $(CXX_FLAGS) $(INCLUDES) -o $@ -c $< -L$(LIBRARY_DIR) $(LIBRARIES)
	@touch $@
endif

# link target
$(TARGET_DIR)/$(TARGET) : $(OBJECTS)
	@echo Linking
	$(SUPPRESS)$(LINK) $(INCLUDES) $(LD_FLAGS) -o $(TARGET_DIR)/$(TARGET) $(OBJECTS) -L$(LIBRARY_DIR) $(LIBRARIES)

#Pull in dependency info for *existing* .o files
-include $(OBJECTS:.o=.d)
