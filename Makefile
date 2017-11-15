CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=login.cpp crypto/sha512/sha512.cpp getpass.cpp cutil/strutil.c checkuser.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=login
BIN=/data/data/com.termux/files/usr/bin
FSROOT=/data/data/com.termux/files
all:adduser login passwd

adduser:
	cd adduser && make

login:
	cd login && make

passwd:
	cd passwd && make

clean:
	rm -rf .*.swp
	cd passwd && make clean
	rm passwd
	cd ..
	cd login && make clean
	rm login
	cd ..
	cd adduser && make clean
	rm adduser
