import "dart:io";

void main(){
  // while(true){
  stdout.write("Enter Temperature : ");
  var input = stdin.readLineSync(); // It takes String as input and can expect null.

  stdout.write("Choose (F)arenheit Or (C)elsius : ");
  var choice = stdin.readLineSync()?.toLowerCase(); 
  /*
  Null-safety operators
  ?---int?---expects integer but can be null 
  !---Null assertion operator--- I'm sure this value is not null.
  ??--- var out = inp ?? ""---if inp is null then put the value after the ?? operator 
  ?.--- call method only if not null
  */

  var temperature = double.tryParse(input ?? ""); // Convert String to double. Expects String as input and retunr
  if(temperature == null){
    print("Invalid Temperature Input! "); 
    return; // If temperature is null then exit the program
  }

  double result;
  String unit;

  if(choice == 'f'){
    result = temperature * 9 / 5 + 32;
    unit = "F";
  }else if(choice == 'c'){
    result = (temperature - 32)* 5 / 9;
    unit = "C";
  }else{
    print("Invalid Choice!");
    return; // Exits the program if choice is invalid.
  }

  print("$temperature°${unit == "F" ? "C" : "F"} is $result°$unit.");
  // }
}