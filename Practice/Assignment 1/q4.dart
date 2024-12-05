import 'dart:io';
void main() {
  print ("Enter the temperature in Celcius: ");
  double celcius = double.parse(stdin.readLineSync()!); 
  double fahrenheit = (celcius * 9/5) + 32;
  print("The temperature in Fahrenheit is: $fahrenheit");
}