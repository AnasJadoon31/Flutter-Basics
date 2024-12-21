void main() {
  // Define the shopping cart map with product names as keys and quantities as values
  Map<String, int> shoppingCart = {
    "Banana": 3,
    "Apple": 5,
    "Orange": 2,
  };

  // Check if the product "Apple" exists in the cart
  if (shoppingCart.containsKey("Apple")) {
    print("Product found");
  } else {
    print("Product not found");
  }
}