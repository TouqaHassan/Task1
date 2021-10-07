 import 'dart:io';
void main () {
  print('Enter Frist Operand');
  int num = int.parse(stdin.readLineSync()!);

  print('Enter Arithmatic Operator');
  var operator = stdin.readLineSync()!;

  print('Enter Second Operand');
  int num1 = int.parse(stdin.readLineSync()!);
  Calculator operations = Calculator();
  while (num != 0) {
    if (num == 0) {
      break;
    }

    switch (operator) {
      case "+" :
        print('$num + $num1 =${operations.addition(num, num1)}');
        break;

      case "-" :
        print('$num - $num1 = ${operations.subtraction(num, num1)}');
        break;

      case "*" :
        print('$num * $num1 = ${operations.multiplication(num, num1)}');
        break;

      case "/" :
        print('$num / $num1 = ${operations.dividing(num, num1)}');
        break;

      default:
        {
          print('invalid choice');
        }

        break;
    }
  }
}




class Calculator{
  int addition(int num, int num1){
return num + num1;
    }
    int subtraction(int num, int num1) {
      return num - num1;
    }
    int multiplication(int num, int num1){
    return num*num1;
    }
    int dividing(int num, int num1){
  return (num ~/ num1);

    }
  }
 

  
