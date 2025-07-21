import 'dart:io';

void processList(List<int> numbers, int Function(int) operation) {
  for (var number in numbers) {
    int result = operation(number);
    print("Input: $number → Output: $result");
  }
}

void main() {
  print("Dart Function Fusioner\n");

  // Example list of numbers
  List<int> sampleList1 = [1, 2, 3, 4, 5];
  List<int> sampleList2 = [10, 20, 30];

  print("Operation: Double each number");
  processList(sampleList1, (int number) => number * 2);

  print("\nOperation: Square each number");
  processList(sampleList1, (int number) => number * number);

  print("\nOperation: Subtract 5 from each number");
  processList(sampleList2, (int number) => number - 5);

  print("\nOperation: Check if number is even (1 for true, 0 for false)");
  processList(sampleList1, (int number) => number % 2 == 0 ? 1 : 0);
}
