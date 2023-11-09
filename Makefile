CC = gcc
CFLAGS = $(shell pkg-config --cflags gtk+-3.0) -Isrc/gui -Isrc/handlers -Isrc/program -Isrc/translate
LDFLAGS = $(shell pkg-config --libs gtk+-3.0) -ljson-c
SOURCES = $(shell find src -type f -name '*.c')

all: ISOmaker

ISOmaker: $(SOURCES)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -f ISOmaker
