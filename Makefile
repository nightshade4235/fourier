CFLAGS = -Wall -Wextra -O3 -ILibraries/include
LDFLAGS = -LLibraries/lib -lglfw -lGL -lm -lglad

all:
	gcc source/main.c -o fourier $(CFLAGS) $(LDFLAGS)
