import 'dart:io';

void main() {
  print("What table: ");
  int x = int.parse(stdin.readLineSync()!);
  print("Enter length of table: ");
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= n; i++) {
    print("$x x $i = ${x * i}");
  }
}
