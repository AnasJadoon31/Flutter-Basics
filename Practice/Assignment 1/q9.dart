import 'dart:io';

void main() {
  int number;
  print("Enter a number: ");
  number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is even.");
    if (number % 5 == 0) {
      print("$number is divisible by 5.");
    }
  } else {
    print("$number is odd.");
    if (number % 7 == 0) {
      print("$number is divisible by 7.");
    }
  }
}
