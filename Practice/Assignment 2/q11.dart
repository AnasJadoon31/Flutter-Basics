void main() {
  List<dynamic> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 5;
  if (n > myList.length) {
    print(
        "Warning: Requested number of elements exceeds list length. Returning the entire list.");
  } else {
    print(myList.sublist(0, n));
  }
}
