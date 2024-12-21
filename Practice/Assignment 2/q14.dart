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
  List sorted = List.from(numbers);
  sorted.sort();
  print("Sorted List: $sorted");
  print("Original List: $numbers");
}
