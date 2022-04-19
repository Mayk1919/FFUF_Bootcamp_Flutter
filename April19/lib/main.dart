import 'dart:io';
import 'dart:math';


//const String animal = 'Fox';
// if (animal == 'Cat' || animal == 'Dog'){
//   print('${animal} is a house pet');
// }
// else{
//   print('${animal} is not a house pet');
// }
// int random = 5;
// print(random % 2 == 0?'Got an even number':'Got an odd number');
//
// const String animal = 'Fox';
//
// const String animalCheck = (animal == 'Cat' || animal == 'Dog')?'${animal} is a house pet':'${animal} is not a house pet';
// print (animalCheck);
// }

  // int age = 30;
  // String output = age < 1
  //     ? 'Infant'
  //     : age < 4
  //     ? 'Baby'
  //     : age < 12
  //     ? 'Toddle'
  //     : 'child';

  // const weather = 'cloudy';
  // switch (weather){
  //   case 'sunny':
  //     print('sunny');
  //     break;
  //   default:
  //     print('not valid weather');

  // final List<String> colorList = ['red','green','blue','yellow','brown'];
  // colorList.map((color) => print(color)).toList();
  //
  //
  // for(int x=1;x<=10;x+=1){
  //   for(int y = 1; y <= 10; y +=1){
  //     stdout.write('${y * x} \t');
  //   }
  //   print('');
  // }






// void greetings(){
//   print('Good Morning!');
// }
//
// String compliment ([int? number]){
//   return '$number is a good number';
// }

// bool withinRange(int value, [int min = 0, int max =10]){
//   return min <=value && value <= max;
// }
// final multiply = (int operand1, int operand2) => operand1 * operand2;

//Activity 1
//Make a two-player Rock-Paper-Scissors game against computer.
// Ask for player’s input, compare them, and print out a message to the winner.

void game({required String player1, required String player2}){
  final random = Random();
  int computer = random.nextInt(3);
  String computerInput = '';
  switch(computer){
    case 1:
       computerInput = 'ROCK';
      break;
    case 2:
       computerInput = 'SCISSOR';
      break;
    default:
       computerInput = 'PAPER';

  }
  print('Computer: ${computerInput}');
  if(computerInput == 'ROCK' && player1.toUpperCase() == 'ROCK' && player2.toUpperCase() == 'ROCK'){
    print("It's a tie!");
  }
  else if(computerInput == 'ROCK' && player1.toUpperCase() == 'SCISSOR' && player2.toUpperCase() == 'SCISSOR'){
    print('Computer Wins');
  }
  else if(player1.toUpperCase() == 'ROCK' && computerInput == 'SCISSOR' && player2.toUpperCase() == 'SCISSOR'){
    print('Player1 Wins');
  }
  else if(player2.toUpperCase() == 'ROCK' && computerInput == 'SCISSOR' && player1.toUpperCase() == 'SCISSOR'){
    print('Player2 Wins');
  }
  else if(computerInput == 'ROCK' && player1.toUpperCase() == 'PAPER' && player2.toUpperCase() == 'PAPER'){
    print('Player1 and Player2 is a tie and wins over Computer');
  }
  else if(player1.toUpperCase() == 'ROCK' && computerInput == 'PAPER' && player2.toUpperCase() == 'PAPER'){
    print('Player2 and Computer is a tie and wins over Player1');
  }
  else if(player2.toUpperCase() == 'ROCK' && computerInput == 'PAPER' && player1.toUpperCase() == 'PAPER'){
    print('Player1 and Computer is a tie and wins over Player2');
  }

  else if(computerInput == 'SCISSOR' && player1.toUpperCase() == 'SCISSOR' && player2.toUpperCase() == 'SCISSOR'){
    print("It's a tie!");
  }
  else if(computerInput == 'SCISSOR' && player1.toUpperCase() == 'PAPER' && player2.toUpperCase() == 'PAPER'){
    print('Computer Wins');
  }
  else if(player1.toUpperCase() == 'SCISSOR' && computerInput == 'PAPER' && player2.toUpperCase() == 'PAPER'){
    print('Player1 Wins');
  }
  else if(player2.toUpperCase() == 'SCISSOR' && computerInput == 'PAPER' && player1.toUpperCase() == 'PAPER'){
    print('Player2 Wins');
  }
  else if(computerInput == 'SCISSOR' && player1.toUpperCase() == 'ROCK' && player2.toUpperCase() == 'ROCK'){
    print('Player1 and Player2 is a tie and wins over Computer');
  }
  else if(player1.toUpperCase() == 'SCISSOR' && computerInput == 'ROCK' && player2.toUpperCase() == 'ROCK'){
    print('Player2 and Computer is a tie and wins over Player1');
  }
  else if(player2.toUpperCase() == 'SCISSOR' && computerInput == 'ROCK' && player1.toUpperCase() == 'ROCK'){
    print('Player1 and Computer is a tie and wins over Player2');
  }
  else if(computerInput == 'PAPER' && player1.toUpperCase() == 'ROCK' && player2.toUpperCase() == 'ROCK'){
    print('Computer Wins');
  }
  else if(player1.toUpperCase() == 'PAPER' && computerInput == 'ROCK' && player2.toUpperCase() == 'ROCK'){
    print('Player1 Wins');
  }
  else if(player2.toUpperCase() == 'PAPER' && computerInput == 'ROCK' && player1.toUpperCase() == 'ROCK'){
    print('Player2 Wins');
  }
  else if(computerInput == 'PAPER' && player1.toUpperCase() == 'SCISSOR' && player2.toUpperCase() == 'SCISSOR'){
    print('Player1 and Player2 is a tie and wins over Computer');
  }
  else if(player1.toUpperCase() == 'PAPER' && computerInput == 'SCISSOR' && player2.toUpperCase() == 'SCISSOR'){
    print('Player2 and Computer is a tie and wins over Player1');
  }
  else if(player2.toUpperCase() == 'PAPER' && computerInput == 'SCISSOR' && player1.toUpperCase() == 'SCISSOR'){
    print('Player1 and Computer is a tie and wins over Player2');
  }
  else if(player2.toUpperCase() == 'ROCK' && computerInput == 'PAPER' && player1.toUpperCase() == 'SCISSOR'){
  print('Player2 wins over Player1 and Computer wins over Player2 and Player1 wins over Computer');
  }
  else if(player2.toUpperCase() == 'PAPER' && computerInput == 'SCISSOR' && player1.toUpperCase() == 'ROCK'){
    print('Player2 wins over Player1 and Computer wins over Player2 and Player1 wins over Computer');
  }
  else if(player2.toUpperCase() == 'SCISSOR' && computerInput == 'ROCK' && player1.toUpperCase() == 'PAPER'){
    print('Player2 wins over Player1 and Computer wins over Player2 and Player1 wins over Computer');
  }
  else if(player2.toUpperCase() == 'PAPER' && computerInput == 'ROCK' && player1.toUpperCase() == 'SCISSOR'){
    print('Player2 wins over Computer and Computer wins over Player1 and Player1 wins over Player2');
  }
  else if(player2.toUpperCase() == 'ROCK' && computerInput == 'SCISSOR' && player1.toUpperCase() == 'PAPER'){
    print('Player2 wins over Computer and Computer wins over Player1 and Player1 wins over Player2');
  }
  else if(player2.toUpperCase() == 'SCISSOR' && computerInput == 'PAPER' && player1.toUpperCase() == 'ROCK'){
    print('Player2 wins over Computer and Computer wins over Player1 and Player1 wins over Player2');
  }

}


//Activity 2
//Create a program that asks the user for a number and then prints out a
// list of all the divisors of that number.
// A divisor is a number that divides evenly into another number. For example, 15
// is a divisor of 30 because 30 / 15 has no remainder.

void divisor(int num){
  List<int> divisorList = [];
  for(int x=1 ; x <= num ; x+=1){
    if(num % x == 0){
      divisorList.add(x);
    }
  }
  print(divisorList);
}

//Activity3
//You are given a list saved in a variable:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Create a program that takes this list and makes a new list that has only the
// even elements of this list in it.

void evenChecker(List numbers){
  List<int> evenNumbers = [];
  for (int number in numbers){
    if (number % 2 == 0){
      evenNumbers.add(number);
    };
  }
  print(evenNumbers);
}


//Activity4
//Fibonacci numbers: Create a program that asks the user how many
// Fibonacci numbers to generate and then generates them. Hint: You can
// use functions here too!
// Make sure to ask the user to enter the number of numbers in the sequence to
// generate.

void fibonacciGenerator(int times){
  List<int> fibonacciList=[0];
  int sequence = 1;
  for(int x = 0; x < times-1; x +=1){
      if(fibonacciList.last == 0){
        fibonacciList.add(sequence);
        sequence += fibonacciList[x];
      }
      else{
        fibonacciList.add(sequence);
        sequence += fibonacciList[x];
      }

    }
  print(fibonacciList);
  }


  //Activity5
//Ask the user for a number and determine whether the number is prime or
// not.
// Hint: Use a function

void primeNumberCheck(int number){
  bool isPrimeNumber = true;
  for(int x = 2; x<number; x+=1){
    if(number % x == 0 ){
      isPrimeNumber = false;
      break;
    }
  }
  isPrimeNumber ? print('${number} is a prime number'):print('${number} is not prime number');
}

//Activity6
//Create a program that will implement a function and takes three input
// variables, and returns the largest of the three. Do not use max() function
// Hint: You just need some variables and if statements.

int findMax(int number1, int number2, int number3){
  int maxNumber = number1;
    if(number2 > maxNumber){
      maxNumber = number2;
    }
    if(number3 > maxNumber){
      maxNumber = number3;
    }
  return maxNumber;
}

//Activity7
//Dart Palindrome: Use a Dart function to check if a passed string is
// palindrome or not.
// A palindrome is a word or phrase that reads the same backward as forward.
// Example: madam, nursesrun

void palindrome(String word){
  String reversedString = word.replaceAll(' ', '').split('').reversed.join().toLowerCase();
 if(word.replaceAll(' ', '').toLowerCase() == reversedString){
   print('${word} is a palindrome');
 }
 else{
   print('${word} is not a palindrome');
 }

}

//Activity8
//No vowels! Create a Dart program and use a function to accept some
// String input as a parameter and delete all vowels from it.

void removeVowel(String word){
  List<String> wordArray = word.toLowerCase().replaceAll('a', '').replaceAll('e', '').replaceAll('i', '').replaceAll('o', '').replaceAll('u', '').split('');

  print(wordArray.join());
}

//Activity9
//9. Camel-case it! Create a Dart function to accept String input and then
// convert the first letter of each word of the String input to UPPER case
// letter.

void camelCaseIt(String word){
  List<String> toCamelCase = word.split('');
  final List<String> newToCamelCase = List.empty();

  int countIndex = 0;
  for(String letter in toCamelCase){

    if(letter == ' '){
    countIndex = toCamelCase.indexOf(letter,countIndex)+1;
    toCamelCase[countIndex] = toCamelCase[countIndex].toUpperCase();
    }

  }
  print(toCamelCase.join());
}

//Acivity 10
//Create a program to get a number from the user and then determine it it
// is positive or negative.
// Hint: Use a control flow statement

void positiveNegative(int number){
  if(number < 0){
    print('${number} is a negative number');
  }
  else if (number > 0){
    print('${number} is a positive number');
  }
  else {
    print('${number} is a zero');
  }
}

void main(){

  // greetings();
  // int input = 12;
  // final output = compliment(input);
  // print(output);

  // print (withinRange(5));
  // print (withinRange(15));
  // print (withinRange(9,7,11));
  // print (withinRange(9,7));

    //print(multiply(2,3));

//Acitivity 1
  game(player1: 'rock', player2: 'ROCK');

  print('***********************************************\n');

  //Activity2
  divisor(30);

  print('***********************************************\n');

//Activity3
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  evenChecker(a);

  print('***********************************************\n');

  //Activity4

  fibonacciGenerator(10);

  print('***********************************************\n');

  //Activity5
  primeNumberCheck(5);

  print('***********************************************\n');

  //Activity6

int maxNumber = findMax(36, 25, 30);
print ('${maxNumber} is the max number');

  print('***********************************************\n');

  //Activity7

palindrome('Race car');

  print('***********************************************\n');

  //Activity8

removeVowel('wOrd chEcker');

  print('***********************************************\n');

  //Activity9

camelCaseIt('this is to check if working');

  print('***********************************************\n');

  //Activity10
  positiveNegative(-23);
}