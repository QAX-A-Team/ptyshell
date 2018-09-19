CC       = gcc
CFLAGS   = -Wall

LIBS = -lutil

.PHONY: all
all: pty

pty: pty.o
	$(CC) -o $@ $^ $(LIBS)
pty.o: pty.c
	$(CC) $(CFLAGS) -c $^ -o $@


.PHONY: clean
clean:
	rm -f pty.o pty
