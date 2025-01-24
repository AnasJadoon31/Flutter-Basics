import 'dart:io';

void main() {
  String username = "Anas";
  String password = "1234";
  print("Enter your username: ");
  String enteredUsername = stdin.readLineSync()!;
  print("Enter your password: ");
  String enteredPassword = stdin.readLineSync()!;
  bool login = true;
  while (login == true) {
    if (enteredUsername == username && enteredPassword == password) {
      print("Login successful.");
      login = false;
    } else {
      print("Login failed. Please try again.");
      print("Enter your username: ");
      enteredUsername = stdin.readLineSync()!;
      print("Enter your password: ");
      enteredPassword = stdin.readLineSync()!;
    }
  }
}
