import 'dart:io';
import 'dart:math';
import 'dart:convert';

double getInputFromUser(){
  var inputFromUser = stdin.readLineSync(encoding: utf8);
  double userValueInDouble;
  try{
    userValueInDouble = double.parse(inputFromUser ?? '0');
    return userValueInDouble;
  }catch(e){
    print("Entered value is not a number!");
    return 0;
  }
}

void main() {
  print('   Scientific Calculator');
  print('   1.  Sum');
  print('   2.  Subtract');
  print('   3.  Multiply');
  print('   4.  Divide');
  print('   5.  Sin');
  print('   6.  Tan');
  print('   7.  Cos');
  print('   8.  Asin');
  print('   9.  Atan');
  print('   10. Acos');
  print('   11. Log');
  print('   12. Square Root');
  print('   13. Average');
  print('   14. Percentage');
  print('   15. Power');
  print('   16. Cube');
  
  double choosenByUser = getInputFromUser();

  if(choosenByUser == 1){
    print("      Addition");
    print("      Enter First Value:::");
    double firstValue = getInputFromUser();

    print("      Enter Second Value:::");
    double secondValue = getInputFromUser();

    print("      SUM of $firstValue and $secondValue is : ${firstValue+secondValue}");

  }
  else if(choosenByUser == 2){
    print("      SUBTRACTION ");
    print("      Enter First Value:::");
    double firstValue = getInputFromUser();
    print("      Enter Second Value:::");
    double secondValue = getInputFromUser();
    print("      Answer of subtraction is : ${firstValue-secondValue}");

  }
  else if(choosenByUser == 3){

    print("      Multiplication ");
    print("      Enter First Value::: ");
    double firstValue = getInputFromUser();
    print("      Enter Second Value::: ");
    double secondValue = getInputFromUser();
    print("      Answer of Multiplication is : ${firstValue*secondValue}");


  }
  else if(choosenByUser == 4){

    print("      Division ");
    print("      Enter First Value::: ");
    double firstValue = getInputFromUser();
    print("      Enter Second Value::: ");
    double secondValue = getInputFromUser();
    print("      Answer of Division is : ${firstValue/secondValue}");

  }
  else if(choosenByUser == 5) {
    print("      Sin ");
    print("      Enter Value: ");
    double firstValue = getInputFromUser();
    print("      sin($firstValue) : ${sin(firstValue)}");
  }
  else if(choosenByUser == 6){
    print("      Tan ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      tan($firstValue) : ${tan(firstValue)}");

  }
  else if(choosenByUser == 7){
    print("      Cos ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      cos($firstValue) : ${cos(firstValue)}");
  }
  else if(choosenByUser == 8){
    print("      asin ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      asin($firstValue) : ${asin(firstValue)}");
  }
  else if(choosenByUser == 9){
    print("      atan ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      atan($firstValue) : ${atan(firstValue)}");
  }
  else if(choosenByUser == 10){

    print("      acos ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      acos($firstValue) : ${acos(firstValue)}");

  }else if(choosenByUser == 11){
    print("      Log ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      log($firstValue) is : ${log(firstValue)}");
  }else if(choosenByUser == 12){

    print("      Square Root ");
    print("      Enter Number: ");
    double firstValue = getInputFromUser();
    print("      Square root of $firstValue is : ${sqrt(firstValue)}");

  }
  else if(choosenByUser == 13){

    print("      Average ");
    print("      Enter total count of Numbers: ");
    double firstValue = getInputFromUser();
    List<num> arrayOfNumber = [];

    for(var i = 0;i<firstValue;i++){
      print("      Enter Number: ");
      double firstValue = getInputFromUser();
      arrayOfNumber.add(firstValue );
    }

    num totalNumbers = arrayOfNumber.length;
    num sumOfAllNumbers = 0;

    for(num b = 0;b<totalNumbers;b++){
      sumOfAllNumbers+=arrayOfNumber[b as int];
    }

    print("      Average: ${sumOfAllNumbers/totalNumbers}");

  }
  else if(choosenByUser == 14){

    print("      Percentage ");
    print("      Enter Total Value: ");
    double firstValue = getInputFromUser();
    print("      Enter Portion of Value: ");
    double secondValue = getInputFromUser();
    print("      Percentage: ${(secondValue/firstValue) * 100}");

  }
  else if(choosenByUser == 15){
    print("      Power ");
    print("      Enter Value: ");
    double firstValue = getInputFromUser();
    print("      Enter Exponent (Power): ");
    double secondValue = getInputFromUser();
    print("      Answer: ${pow(firstValue, secondValue)}");
  }
  else if(choosenByUser == 16){
    print("      Cube ");
    print("      Enter Value: ");
    double firstValue = getInputFromUser();
    print("      Answer: ${pow(firstValue, 3)}");
  }
}

