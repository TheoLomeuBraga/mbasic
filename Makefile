# Poggers makefile
#FILES = basic.c
#FLAGS = -std=c99 # TODO: add -O1

#$(OUT): $(FILES)
#	$(CC) $(FILES) $(FLAGS) -o $(OUT)

all:
	gcc basic.c -std=c99 -o ./build/basic
	g++ basic.cpp -o ./build/c++_basic

	cp ./guess_number.bas ./build/guess_number.bas
