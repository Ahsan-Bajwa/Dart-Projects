import 'dart:io';
import 'dart:math';

String generatePassword(int length){
  var codeUnits = List.generate(length, (index){return Random.secure().nextInt(99)+33;});
  return String.fromCharCodes(codeUnits);
}


void main(){
  
  stdout.write("Enter Password Length : ");
  var input = stdin.readLineSync();
  var length = int.tryParse(input ?? '12') ?? 12;
  var password = generatePassword(length);

  print("Password : $password");
}