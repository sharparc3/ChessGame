CFLAGS = -c -Wall
CC = gcc
PTLIBS = -pthread

all: server client

server: cchess-server.o
	${CC} cchess-server.o -o server

cchess-server.o: cchess-server.c
	${CC} ${CFLAGS} cchess-server.c ${PTLIBS}

client: cchess-client.o
	${CC} cchess-client.o -o client

cchess-client.o: cchess-client.c
	${CC} ${CFLAGS} cchess-client.c ${PTLIBS}

clean:
	rm -f *.o *~