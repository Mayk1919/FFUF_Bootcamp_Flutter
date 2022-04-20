//
// class Person{
//   String? name;
//   Robot? robot;
//   Person (String name){
//     this.name = name;
//   }
//
//   String? getsARobot(Robot robot){
//     this.robot = robot;
//     return robot.name;
//   }
// }
//
// class Robot {
//   String? name;
//   int? numberOfBullets;
//   Person? person;
//
//   Robot(String name){
//     this.name = name;
//   }
//
//   int canFire(int numberOfBullets){
//     this.numberOfBullets = numberOfBullets;
//     return numberOfBullets;
//   }
//   String? fireAt(Person person){
//     this.person = person;
//     return person.name;
//   }
//
//
// }
//
// Function applyMultiplier(double multiplier){
//   return (double value) => value * multiplier;
// }
//
// bool checkPrime2(int number){
//   bool isPrimeNumber = true;
//   int x = 2;
//   while( x < number){
//     if(number % x == 0 ){
//       isPrimeNumber = false;
//       break;
//     }
//     x += 1;
//   }
//   return isPrimeNumber;
// }
//
// class User{
//   int? id;
//   String? name;
//
//   User({
//     required this.id,
//     required this.name});
//
//   @override
//   String toString(){
//     return 'User (id: $id, name: $name)';
//   }
//
//   String toJson(){
//     return '{"id":$id, "name":"$name"}';
//   }
//
// }
//
// class Password{
//   String value = "";
//
//   @override
//   String toString()=>'Your password is ${isValid()? 'valid' : 'not valid' }';
//
//   bool isValid() => value.length > 8;
// }
//
//
// class Address{
//   Address ();
//   var value = '';
// }

// class User {
//   final String name;
//   final int id;
//
//   const User({
//     required this.name,
//     required this.id,
//   });
// }
//
// class Book {
//   final String name;
//   final String author;
//   final int pages;
//
//   const Book({
//     required this.name,
//     required this.author,
//     required this.pages,
//   });
//
//   @override
//   String toString() => 'Book: $name ($pages pages) by $author ';
// }

// class Student {
//   final String firstName;
//   final String lastName;
//   final int grade;
//
//   const Student({
//     required this.firstName,
//     required this.lastName,
//     required this.grade,
//   });
//
//   @override
//   String toString() => 'Student name: $lastName, $firstName, Grade: $grade ';
// }

void main(List<String> arguments) {
//   var peronOne = Person('Mike');
//   var robotOne = Robot('VoltesV');
//   var personTwo = Person('Jayson');
//   var robotTwo = Robot('RoboCap');
//
//   print ('The first person has a name: ${peronOne.name}');
//   print ('The first robot has a name: ${robotOne.name}');
//
//   print('${robotOne.name} can fire ${robotOne.canFire(100)} bullets');
//   print('${peronOne.name} has a robot called ${peronOne.getsARobot(robotOne)}');
//   print('${peronOne.name} uses ${robotOne.name} to fire ${peronOne.robot?.canFire(50)} bullets at ${personTwo.name}');
//
//
// print(applyMultiplier(2));
//
// print (checkPrime2(21) ? 'Prime number' : ' Not a prime number');

// final user = User(id : 1,name :'MIke');
//  print(user);
//  print(user.toJson());
//
// final password = Password();
// password.value = 'password';
//
// print(password);

  // const myUser = User(name: 'Mike', id: 19);
  //
  // const user2 = User(name: 'Mike', id: 19);
  //
  // print(myUser == user2);
  // print(myUser.hashCode);
  // print(user2.hashCode);
  //
  // const book1 = Book(
  //     name: 'Harry Potter: The Sorcerer Stone',
  //     author: 'Jk Rowling',
  //     pages: 500);
  //
  // const book2 = Book(
  //     name: 'Harry Potter: Chamber of Secret ',
  //     author: 'Jk Rowling',
  //     pages: 600);
  //
  // const book3 = Book(
  //     name: 'Harry Potter: Prisoner of Azkaban',
  //     author: 'Jk Rowling',
  //     pages: 700);
  // print(book1);
  // print(book2);
  // print(book3);

//   const student1 = Student(
//     firstName: 'Luna',
//     lastName: 'Ketchum',
//     grade: 90,
//   );
//   const student2 = Student(
//     firstName: 'Liam',
//     lastName: 'Ketchum',
//     grade: 95,
//   );
//
//   print(student1);
//   print(student2);
// }
}