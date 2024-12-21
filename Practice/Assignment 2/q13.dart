void main() {
  List<int> numbers = [1, 2, 1, 2, 3, 4, 5, 4, 5, 6, 3];
  List<int> uniqueNumbers = [];

  numbers.removeWhere((element) {
    if (uniqueNumbers.contains(element)) {
      return true;
    } else {
      uniqueNumbers.add(element);
      return false;
    }
  });
  print(uniqueNumbers);
}
