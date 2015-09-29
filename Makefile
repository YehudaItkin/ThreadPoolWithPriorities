CC=gcc
CFLAGS=-D THPOOL_DEBUG -pthread
DEPS=thpool.h
OBJ=example.o thpool.o
%.o: %.c $(DEPS)
		$(CC) -c -o $@ $< $(CFLAGS)
example: $(OBJ)
		gcc -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -rf *.o example
