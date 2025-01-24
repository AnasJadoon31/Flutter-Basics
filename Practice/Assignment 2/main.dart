void main() {
  int i = 0;
  List marks = [12, 34, 1, 2, 4, 32, 14, 1464, 24, 41, 34];
  marks.sort();
  for (var mark in marks) {
    if (i < 5) {
      print(mark);
      i++;
    } else {
      break;
    }
  }
}
