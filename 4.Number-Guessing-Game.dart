import "dart:io";
import "dart:math";

void main(){
  
  final random = Random();
  final answer = random.nextInt(100)+1;

  print("I'm thinking of a number between 1 and 100...Can you guess it?");
  int guess;
  int numGuess = 0;

  do{
    numGuess++;
    stdout.write("Enter your Guess : ");
    guess = int.parse(stdin.readLineSync()!);

    if(guess > answer){
      print("Not Correct! Guess Lower.");
    }
    else if(guess < answer){
      print("Not Correct! Guess Higher.");
    }
    else{
      print("Congratulations that is the correct guess.");
      print("Total Guesses $numGuess");
    }

  }while(guess != answer);
}