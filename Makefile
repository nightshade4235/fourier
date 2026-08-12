CFLAGS = -Wall -Wextra -O3 -ILibraries/include -ILibraries/imgui/include
LDFLAGS = -LLibraries/lib -LLibraries/imgui/lib -lglfw -lGL -lm -lglad -lcimgui -lstdc++

all:
	gcc source/main.c -o fourier $(CFLAGS) $(LDFLAGS)
