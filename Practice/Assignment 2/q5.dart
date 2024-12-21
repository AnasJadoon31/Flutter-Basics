void main() {
  Map<String, dynamic> addressBook = {
    "name": ["Anas", "Ali", "Usman", "Hamza", "Rameez"],
    "phone": [212344435, 2344, 234234234, 1234, 9876],
  };

  Map<String, dynamic> filteredPhoneBook = {};

  List<String> filteredNames =
      addressBook["name"].where((name) => name.toString().length == 4).toList();

  filteredPhoneBook["name"] = filteredNames;

  List<int> filteredPhones = addressBook["phone"]
      .where((phone) => phone.toString().length == 4)
      .toList();

  filteredPhoneBook["phone"] = filteredPhones;

  print("Phone numbers with 4 digits: $filteredPhoneBook");
}
