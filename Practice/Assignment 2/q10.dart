void main() {
  List<String> names = [
    "Anas",
    "Ali",
    "Usman",
    "Hamza",
    "Rameez",
    "Anas",
    "Rameez",
    "Usman"
  ];
  List newList = names.toSet().toList();
  print(newList);
}
