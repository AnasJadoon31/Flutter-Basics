import 'dart:io';

void main() {
//   var numbers = [1, 2, 3, 4, 5, 6, 7];
//   print(numbers.last - 1);
//   numbers.replaceRange(0, numbers.length, [8, 7, 6, 5, 4]);
//   print(numbers);
//   print(!numbers.isEmpty);
//   numbers.sort();
//   print(numbers);
//   List names = ["Anas", "Amna", "Rameez", "Hammad", "Iqra"];
//   names.sort();
//   print(names);
//   names.add("Muzzammil");
//   print(names);
//   names.addAll(["Rao", "Ali"]);
//   print(names);
//   names.addAll([1, 22, 3, 4, 5, 6, 7, 8, 9, 10]);
//   print(names);
//   names.removeRange(names.length - 11, names.length);
//   print(names);
//   names.remove("Rao");
//   if (!names.contains("Rao")) {
//     print("Rao is not in the list.");
//   }
//   print(names);
//   names.remove("Rao");
//   if (!names.contains("Rao")) {
//     print("Rao is not in the list.");
//   }
//   print(names);
//   int index = names.indexOf("Iqra");
//   names.removeWhere((name) => names.indexOf(name) > index);
//   print(names);
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   // numbers.removeWhere((e) => e <= 5);
//   print(numbers);
//   numbers.retainWhere((e) => e <= 5);
//   print(numbers);
//   print(numbers.length);
  String numbersConverted = numbers.toString();
  print(numbersConverted.replaceAll(RegExp('[\\[\\]]'), ''));
  print(RegExp('[1]'));
  print(numbersConverted);
  print(numbersConverted);
  print ("Enter your email: ");
  String email = stdin.readLineSync()!;
  RegExp emailRegex = RegExp(r'^[^0-9][a-zA-Z^0-9._]+[^_\.]@[a-zA-Z0-9]+\.[a-zA-Z]+$');
  if (emailRegex.hasMatch(email)) {
    print("Email is valid.");
  } else {
    print("Email is invalid.");
  }
  // Map data = {numbers.toString(): "Anas"};
//   print (data.keys);
//   print (data);
//   print (data.length);
}
