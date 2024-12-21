void main() {
  List<int> numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7];
  numbers.retainWhere((number) => number % 2 == 0);
  print(numbers);
}
