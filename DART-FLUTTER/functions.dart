// Functions in Dart
void main() {
  num addTwo(num x, num y) => x + y;
  num subtractTwo(num x, num y) => x - y;
  num multiplyTwo(num x, num y) => x * y;
  num divideTwo(num x, num y) => x / y;
  int stringLength(String str) => str.length;
  num getFirstElement(List<int> nums) => nums[0];

  //Calling the functions
  num sum = addTwo(10, 2);
  num diff = subtractTwo(10, 2);
  num prod = multiplyTwo(10, 2);
  num div = divideTwo(10, 2);
  num len = stringLength("This is dart programming!");
  num first = getFirstElement([20, 40, 10]);

  //Print results
  print("Sum: $sum");
  print("Difference: $diff");
  print("Product: $prod");
  print("Division: $div");
  print("String length: $len");
  print("First element: $first");
}
