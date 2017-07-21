#include <iostream>
#include "hello.h"
#include "greetings.h"

using namespace std;

int main(int argc, char** argv) {
  cout << say_hello("Andres") << endl;
  cout << greet("Andres") << endl;
}
