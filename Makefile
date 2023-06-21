# Poggers makefile
#FILES = basic.c
#FLAGS = -std=c99 # TODO: add -O1

#$(OUT): $(FILES)
#	$(CC) $(FILES) $(FLAGS) -o $(OUT)

all:
	gcc basic.c -std=c99 -o basic
	g++ basic.cpp -o c++_basic
