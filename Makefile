.PHONY: all clean run

all: build/run

clean:
	rm -rf build

run: all
	build/run

build/main.o: src/main.cpp build/
	g++ -c src/main.cpp -o build/main.o

build/greetings.o: src/greetings.cpp build/
	g++ -c src/greetings.cpp -o build/greetings.o

build/hello.o: src/hello.cpp build/
	g++ -c src/hello.cpp -o build/hello.o

build/run: build/main.o build/greetings.o build/hello.o
	g++ -o build/run build/main.o build/greetings.o build/hello.o

build/:
	mkdir build
