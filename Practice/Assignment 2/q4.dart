void main() {
  List<int> numbers = [
    32,
    12,
    43,
    31,
    57,
    12,
    562,
    262,
    2,
    36,
    264,
    153,
    65,
    256,
    472,
    152
  ];
  numbers.sort();
  num greatest = numbers.last;
  num smallest = numbers.first;
  print("Greatest number: $greatest\nSmallest number: $smallest");
}
