import 'dart:io';

void main() {
  int? number;

  print("Enter a number: ");
  String? user_input = stdin.readLineSync();
  if (user_input != null) {
    number = int.parse(user_input);
  }
  //prompts the user for a number
  if (number != null) {
    if (number > 10) {
      print("Your number is greater than 10.");
    } else if (number < 10) {
      print("Your number is less than 10.");
    } else if (number == 10) {
      print("Your number is equal to 10.");
    }
  } else {
    print("Invalid input");
  }
}
