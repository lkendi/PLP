void main() {
  //double - floating point numbers
  double price = 100.50;
  //int - positive and negative whole numbers
  int age = 34;
  //String - text
  String name = "User Name";
  //List - collection of elements
  List<int> numbers = [10, 20, 30, 40];
  //Map - key-value pairs
  Map<String, int> items = {"Flour": 20, "Pots": 10, "Chicken": 18};

  print("The lowest price is $price.");
  print("His name is $name and his age is $age.");
  print("Below is a list of numbers: ");
  for (var number in numbers) {
    print(number);
  }
  print("A map has key-value pairs: ");
  for (var entry in items.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }
}
