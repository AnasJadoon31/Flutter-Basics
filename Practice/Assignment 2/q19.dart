void main() {
  // Example product map
  Map<String, dynamic> product = {
    "name": "Laptop",
    "price": 1500,
    "quantity": 5,
  };

  // Check if the product is in stock
  if (product["quantity"] > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }
}
