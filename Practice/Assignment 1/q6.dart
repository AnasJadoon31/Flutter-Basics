import 'dart:io';
void main() {
  String alphabet;
  print("Enter an alphabet: ");
  alphabet = stdin.readLineSync()!;
  if (alphabet == "a" || alphabet == "e" || alphabet == "i" || alphabet == "o" || alphabet == "u") {
    print("$alphabet is a vowel.");
  } else {
    print("$alphabet is a consonant.");
  }
}
