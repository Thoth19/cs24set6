CC = gcc
ASFLAGS = --32
CFLAGS = -m32 -Wall -g -O0

OBJS = myids.o get_ids.o
EXEC = myids


all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) -m32 $(LDFLAGS) -o $@ $^

clean:
	rm -f *~ *.o $(EXEC) $(EXEC).exe

.PHONY:  clean all

