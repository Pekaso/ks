CC = gcc
DEST = /usr/local/bin

all: ks

ks:	ks.o
	$(CC) ks.o -o ks

clean:
	rm -f *.o *~ ks

install: ks
	install -s ks $(DEST)
