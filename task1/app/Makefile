CC = gcc

app: main.o code.o
    $(CC) -o app main.o code.o

main.o: main.c
    $(CC) -c main.c

code.o: code.c
    $(CC) -c code.c

clean:
    rm -f*.o app
