void main() {
  List<int> numbers = [5, 34, 64, 1, 6, 31, 66, 68];
  List<int> mapNumbers = (numbers.map((number) => number * number)).toList();
  print(mapNumbers);
}
