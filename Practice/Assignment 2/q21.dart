void main() {
  // Define the user map with the given key-value pairs
  Map<String, dynamic> user = {
    "name": "Alice",
    "isAdmin": true,
    "isActive": true,
  };

  // Check if the user is both an admin and active
  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }
}