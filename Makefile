CC=clang
CFLAGS=-I.
DEPS = $(wildcard *.h)
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
EXEC = MELPe_fxp

# Rule to make everything
all: $(EXEC)

# Rule to compile the executable
$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

# Generic rule for compiling object files
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

# Rule for cleaning up
clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
