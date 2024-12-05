import 'dart:io';

void main() {
  int length, breadth;
  print("Enter the length: ");
  length = int.parse(stdin.readLineSync()!);
  print ("Enter the breadth: ");
  breadth = int.parse(stdin.readLineSync()!);

  if (length == breadth) {
    print("It is a Square");
  } else {
    print("It is a Rectangle");
  }
}
