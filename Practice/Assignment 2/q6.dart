void main() {
  // Define the 'world' map
  Map<String, Map<String, String>> world = {
    "Pakistan": {
      "capitalCity": "Islamabad",
      "currency": "Pakistani Rupee",
      "language": "Urdu",
    },
    "United States": {
      "capitalCity": "Washington, D.C.",
      "currency": "US Dollar",
      "language": "English",
    },
    "Japan": {
      "capitalCity": "Tokyo",
      "currency": "Yen",
      "language": "Japanese",
    },
  };

  // Specify the country key to print its values
  String countryKey = "Pakistan";

  // Print capital city and currency for the selected country
  if (world.containsKey(countryKey)) {
    print("Capital City of $countryKey: ${world[countryKey]!['capitalCity']}");
    print("Currency of $countryKey: ${world[countryKey]!['currency']}");
  } else {
    print("Country $countryKey not found in the world map.");
  }
}
