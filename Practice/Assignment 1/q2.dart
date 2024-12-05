import 'dart:io';
void main() {
  int age1, age2;
print ("Enter the age of the first person:");
age1 = int.parse(stdin.readLineSync()!);
print ("Enter the age of the second person:");
age2 = int.parse(stdin.readLineSync()!);
if (age1 > age2) {
  print("The first person is older than the second person.");
} else if (age1 < age2) {
  print("The second person is older than the first person.");
} else {
  print("The first person is the same age as the second person.");
}
}