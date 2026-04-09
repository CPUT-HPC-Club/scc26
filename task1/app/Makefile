CC = gcc
CFLAGS = -Wall

all: app

app: main.o code.o
	$(CC) $(CFLAGS) -o app main.o code.o

main.o: main.c code.h
	$(CC) $(CFLAGS) -c main.c

code.o: code.c code.h
	$(CC) $(CFLAGS) -c code.c

clean:
	rm -f *.o app
