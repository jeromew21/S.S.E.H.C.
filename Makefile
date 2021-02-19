CXX      := -clang++
CXXFLAGS := -std=c++17 -pedantic-errors -Wall -Wextra -pthread
MAKEFLAGS := --jobs=$(shell nproc)
BUILD    := ./build
OBJ_DIR  := $(BUILD)/objects
APP_DIR  := $(BUILD)/apps
ASM_DIR  := $(BUILD)/assembly
TARGET   := ssehc
INCLUDE  := -Iinclude/
SRC      :=                      \
   $(wildcard src/**/*.cpp)      \
   $(wildcard src/*.cpp)         \

OBJECTS  := $(SRC:%.cpp=$(OBJ_DIR)/%.o)

all: build $(APP_DIR)/$(TARGET)

$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(@D)
	$(CXX) -S $(INCLUDE) -c $< -o $(ASM_DIR)/$(notdir $@).asm
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@ 

$(APP_DIR)/$(TARGET): $(OBJECTS)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -o $(APP_DIR)/$(TARGET) $^

.PHONY: all build clean debug release

build:
	@mkdir -p $(APP_DIR)
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(ASM_DIR)

debug: CXXFLAGS += -DDEBUG -g
debug: all

release: CXXFLAGS += -DNDEBUG -ffast-math -O3 # disable assertions, generate documentation...
release: all
	@./gen-docs.sh

clean:
	-@rm -rvf $(OBJ_DIR)/*
	-@rm -rvf $(APP_DIR)/*
	-@rm -rvf $(ASM_DIR)/*
