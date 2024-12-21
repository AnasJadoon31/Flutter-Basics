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
  List<dynamic> even = numbers.where((element) => element % 2 == 0).toList();
  print(even);
}
