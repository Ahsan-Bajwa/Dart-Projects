import "dart:io";

void main(){

  print("Enter First Number : ");
  double num1 = double.parse(stdin.readLineSync()!); // (!)Null assertion operator --- String? --> String

  print("Enter Second Number : ");
  double num2 = double.parse(stdin.readLineSync()!); // print adds a newline while stdout.write does not.

  print("Enter Operation (+,-,*,/) : ");
  String operation = stdin.readLineSync()!;

  double result;
  
  switch(operation){
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
    default:
      print("Invalid Operation!");
      return;
  }
  stdout.write("$result");
}