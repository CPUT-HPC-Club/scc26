CC = gcc
CFLAGS = -Wall -g
OBJ = code.o main.o
TARGET = app

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

code.o: code.c code.h
	$(CC) $(CFLAGS) -c code.c

main.o: main.c code.h
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f $(OBJ) $(TARGET) */group.txt
