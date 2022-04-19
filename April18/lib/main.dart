import 'dart:math';
import 'dart:math';


void main() {
// print('Hello World');
// print('My name is Michael');
// print('I am 35 years old');
// print('Weight: 80kg');
// print('Height: 170cm');
// print('"Mario" is a fun and popular game');

// String greeting = 'Hello Dart!';
// String country = 'Japan';
// String name = 'Ash';
//
// print(greeting);
// print(country);
// print('My name is $name');
// print('Evaluate ${5+2}');
//
// String firstString = 'First half of the string';
// String secondString = 'Second half of the string';
//
// print(firstString + secondString);
//
// int age = 10;
// double weight = 33.5;
// double height = 140.5;
//
// print ('I am $age yrs. old');
// print ('Weight $weight');
// print('Height ${height}');
//
// bool isPokemonFun = true;
// bool isRegisteredVoter = false;
//
// print('Pokemon is fun and popular game? $isPokemonFun');
// print ('Are you a registered voter? $isRegisteredVoter');

// Random random = Random();
// final int randomNumber = random.nextInt(100);
// print(randomNumber);
//
// var myName= 'Cloud Strife';
// var myAge = 21;
// var myHeight = 173.0;
// var isSoldier = true;
//
// print (myName.runtimeType);
// print (myAge.runtimeType);
// print (myHeight.runtimeType);
// print (isSoldier.runtimeType);
//
// dynamic  dynamicVariable = 'A string';

// List <String> listOfPokemon = ['Bulbasaur','Squirtle','Charmander'];
// print (listOfPokemon);
// print (listOfPokemon[2]);
//
// List numbersLettersBool = ['A',1, true];
// print(numbersLettersBool.runtimeType);
//
//
// final List<int> favNumbers = [10,12,14,16,18,20];
//
// print ('first Element: ${favNumbers.first}');
// print ('isEmpty: ${favNumbers.isEmpty}');
// print ('is Not Empty: ${favNumbers.isNotEmpty}');
// print ('Length of list: ${favNumbers.length}');
// print ('last Element: ${favNumbers.last}');
// print ('Reverse: ${favNumbers.reversed}');
//
// favNumbers.add(22);
// print (favNumbers);
//
// favNumbers.addAll([24,26,28,30]);
// print(favNumbers);
//
// favNumbers.insert(4, 32);
// print(favNumbers);
//
// favNumbers.replaceRange(6, 8, [19,19,19,19]);
// print(favNumbers);
//
// favNumbers.remove(10);
// print(favNumbers);
//
// favNumbers.removeAt(2);
// print(favNumbers);
//
// favNumbers.removeRange(1, 4);
// print(favNumbers);
//
// favNumbers.sort();
// print(favNumbers);
//
// favNumbers.reversed.toList();
// print(favNumbers);
//
//
// final List<String> months =[];
// months.add("January");
// months.add("February");
// months.add("March");
// months.add("April");
// months.add("May");
// months.add("June");
// months.add("July");
// months.add("August");
// months.add("September");
// months.add("October");
// months.add("November");
// months.add("December");
//
// print(months);
//
// final List<String> monthsUpperCase = [];
// for(String month in months){
//   monthsUpperCase.add(month.toUpperCase());
// }
// print(monthsUpperCase);

// final Map<int,String> pokemon = {
//   1:"Bulbasaur",
//   2:"Squirtle",
//   3:"Charmander",
//   4:"Pikachu"
// };
//
// print(pokemon[1]);


// int operand1=10;
// int operand2=7;
//
// print(operand1 + operand2);
// print(operand1 - operand2);
// print(-operand1);
// print(operand1 * operand2);
// print(operand1 / operand2);
// print(operand1 ~/ operand2);
// print(operand1 % operand2);

// int counter = 0;
// counter++;
// print(counter);
// counter--;
// print(counter);
//
// ++counter;
// print(counter);
// --counter;
// print(counter);



// print( 1 < 2);
// print( 2 <= 2);
// print( 2> 1);
// print(2 >= 3);
// print(2 == 5);
// print(2 != 1);

// double type1 = 5.0;
// int type2 = 87;
// String type3 = "some text";
// bool type4 = true;
// print(type1 is double);

//Activities

//Activity 1
/*Write a Dart program that displays
 your favorite movie quote,
the movie it comes from,
the character who said it,
and the year of the movie.*/

String favoriteMovie = 'Up';
String movieQuote = 'That might sound boring, but I think the boring stuff is the stuff I remember the most.';
String movieCharacter = 'Russell';
int movieReleaseYear=2009;

print('Favorite movie quote: ${movieQuote}');
print('Movie name: ${favoriteMovie}');
print('Character who said the quote: ${movieCharacter}');
print('Movie released year: ${movieReleaseYear}');

print('\n');



//Activity 2
//Write a Dart program that displays your favorite pokemon, then write every possible detail you can think of. (Ex. #, Type, Abilities, Gender, Evolution, Etc…..)

Map<String,String> favoritePokemon ={
  "Pokemon":"Pikachu",
  "Type":"Electric",
  "Weakness":"Ground",
  "Evolution":"Raichu",
  "Ability":"Static",
  "Category":"Mouse",
  "Height":"0.4 m",
  "Weight":"6.0 kg",
};

favoritePokemon.forEach((key, value) {
  print('${key} : ${value}');
});

  print('\n');
//Activity 3

  print("MM     MM  II  KK  KK  EEEEEE");
  print("MMM   MMM  II  KK KK   EE");
  print("MM  M  MM  II  KKK     EEEE");
  print("MM     MM  II  KK KK   EE");
  print("MM     MM  II  KK  KK  EEEEEE");

  print('\n');
//Activity 4

  print("  +++++++++");
  print(" /         \u005C");
  print(" | P     P |");
  print("<|    w    |>");
  print(" \u005C   ===   /");
  print("  \u005C_______/");

  print('\n');
//Activity 5
/*Declare a constant int called myAge and set it equal to your
 age. Also declare an int variable called dogs and set that
 equal to the number of dogs you own. Then imagine you
 bought a new puppy and increment the dogs variable by one.
*/

const myAge = 35;
int dogs = 0;
dogs +=1;
print('After buying a puppy, now I have ${dogs} dog/dogs');


  print('\n');
//Activity 6
/*Write a program that takes the radius of a sphere (a floating-point number) as
 input and then outputs the sphere’s diameter, circumference, surface area, and
 Volume. - Sphere Calculator
*/

  double radius = 4.0;
  const double Pi = 3.1416;

  double diameter = radius * 2;
  double circumference = 2 * radius * Pi;
  double surfaceArea = 4 * Pi * pow(radius, 2);
  double volume = 4/3 * Pi * pow(radius, 3);

  print('The diameter is ${diameter}');
  print('The circumference is ${circumference}');
  print('The surface area is ${surfaceArea}');
  print('The volume is ${volume}');

  print('\n');
//Activity 7
/*Write a program that accepts a number of minutes and converts it both to hours
and days. - MinutesConverter
*/
  int minutes = 120;
  double hours = minutes / 60;
  double days = minutes / 1440;

  print('Number of hours: ${hours}');
  print('Number of days: ${days}');

  print('\n');
//Activity 8
/*
Average rating
Declare three constants called rating1, rating2 and
rating3 of type double and assign each a value. Calculate
the average of the three and store the result in a constant
named averageRating.

*/

  const double rating1= 90;
  const double rating2= 92;
  const double rating3= 85;

  const double averageRating = (rating1 + rating2 + rating3) / 3;

  print('Average is ${averageRating}');


  print('\n');
//Activity 9
/*
Quadratic equations
A quadratic equation is something of the form
a⋅x² + b⋅x + c = 0.
The values of x which satisfy this can be solved by using the
equation
x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a).
Declare three constants named a, b and c of type double.
Then calculate the two values for x using the equation above
(noting that the ± means plus or minus, so one value of x for
each). Store the results in constants called root1 and root2
of type double.
*/

  const double a = 2.0;
  const double b = 3.0;
  const double c = 1.0;

  final double root1 = ((-b + sqrt(pow(b, 2) - 4 * a * c))/(2 * a));
  final double root2 = ((-b - sqrt(pow(b, 2) - 4 * a * c))/(2 * a));
  print("root 1 : ${root1}");
  print("root 2 : ${root2}");
  print('\n');
//Activity 10
/*
Teacher’s grading
You’re a teacher, and in your class, attendance is worth 20%
of the grade, the homework is worth 30% and the exam is
worth 50%. Your student got 90 points for her attendance, 80
points for her homework and 94 points on her exam.
Calculate her grade as an integer percentage rounded down.

*/
  int attendance = 90;
  int homework = 80;
  int exam = 94;
  print('Grade : ${(attendance * .2 + homework * .3 + exam * .5).floor()}');

  print('\n');
//Activity 11
/*
Find the error
What is wrong with the following code?
const name = 'Ray';
name += ' Wenderlich';
.

Name is a constant and they are immutable;
*/

//Activity 12
/*
What’s the type of value?
const value = 10 / 2;
double
*/
  const value = 10 / 2;
  print('Type of value is ${value.runtimeType}');

  print('\n');

//Activity 13
/*
We need a function that can transform a number into a string.
What ways of achieving this do you know?

We can use .toString method();
*/

  int number = 123;
  String numberToString = number.toString();

  print('Type of ${numberToString} is ${numberToString.runtimeType}');

  print('\n');
//Activity 14
/*
Complete the solution so that it reverses the string passed into it.
*/

  String word = "word";
  print('Reverse of is ${word} is ${word.split(' ').reversed.join()}');

  print('\n');

//Activity 14
/*
Nathan loves cycling.Because Nathan knows it is important to stay hydrated, he drinks 0.5 liters of water per hour of cycling.

You get given the time in hours and you need to return the number of liters Nathan will drink, rounded to the smallest value.
*/
  double time = 6.7;

  print('Nathan drinks ${time ~/ 2} liters of water');


}
