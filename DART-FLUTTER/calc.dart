import 'dart:io';

List<double> getUserInput() {
  print("Enter 2 numbers to add:");
  print("1st Number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("\n2nd Number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  return [num1, num2];
}

void main() {
  while (true) {
    print("=============== Calculator ===============");
    print("Select operation from the options below: ");
    print(
        " 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division \n 5. Exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        List<double> operands = getUserInput();
        print("${operands[0]} + ${operands[1]} = ${operands[0] + operands[1]}");
        break;
      case 2:
        List<double> operands = getUserInput();
        print("${operands[0]} - ${operands[1]} = ${operands[0] - operands[1]}");
        break;
      case 3:
        List<double> operands = getUserInput();
        print("${operands[0]} * ${operands[1]} = ${operands[0] * operands[1]}");
        break;
      case 4:
        List<double> operands = getUserInput();
        if (operands[1] != 0) {
          print(
              "${operands[0]} / ${operands[1]} = ${operands[0] / operands[1]}");
        } else {
          print("Zero division error.");
        }
        break;
      case 5:
        print("Bye!");
        exit(0);
      default:
        print("Invalid choice. Please select a choice between 1 and 4.");
    }
  }
}
