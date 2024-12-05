import 'dart:io';

void main() {
  String name, grade, studentClass, rollNo;
  print("Enter your name: ");
  name = stdin.readLineSync()!;
  print("Enter your class: ");
  studentClass = stdin.readLineSync()!;
  print("Enter your roll number: ");
  rollNo = stdin.readLineSync()!;
  num english, urdu, islamiat, computer, physics;
  print("Enter marks in English: ");
  english = num.parse(stdin.readLineSync()!);
  print("Enter marks in Urdu: ");
  urdu = num.parse(stdin.readLineSync()!);
  print("Enter marks in Islamiat: ");
  islamiat = num.parse(stdin.readLineSync()!);
  print("Enter marks in Computer: ");
  computer = num.parse(stdin.readLineSync()!);
  print("Enter marks in Physics: ");
  physics = num.parse(stdin.readLineSync()!);
  num total = english + urdu + islamiat + computer + physics;
  num percentage = (total / 500) * 100;
  double percentageRounded = double.parse(percentage.toStringAsFixed(2));
  if (percentage >= 80) {
    grade = ("Grade: A+");
  } else if (percentage >= 70) {
    grade = ("Grade: A");
  } else if (percentage >= 60) {
    grade = ("Grade: B");
  } else if (percentage >= 50) {
    grade = ("Grade: C");
  } else if (percentage >= 40) {
    grade = ("Grade: D");
  } else {
    grade = ("Grade: F");
  }
  print("Name: $name");
  print("Class: $studentClass");
  print("Roll No: $rollNo");
  print("Total: $total");
  print("Percentage: $percentageRounded%");
  print(grade);
}
