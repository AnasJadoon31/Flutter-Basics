import 'dart:io';
void main() {
  num first, second, third;
  print("Enter the first number: ");
  first = num.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  second = num.parse(stdin.readLineSync()!);
  print("Enter the third number: ");
  third = num.parse(stdin.readLineSync()!);
  if (first > second && first > third) {
    print("The largest number is: $first");
  } else if (second > first && second > third) {
    print("The largest number is: $second");
  } else {
    print("The largest number is: $third");
  }
}