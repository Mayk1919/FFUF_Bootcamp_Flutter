import 'package:april25/discussion2.dart';

abstract class Animal {
  late int age;
  late String name;

  void talk();
  void growl() =>print('grrrr');
}

class Cat implements Animal{
  @override
  late int age;

  @override
  late String name;

  Cat({
    required this.name,
    required this.age,
});

  @override
  void growl() {
    // TODO: implement growl
  }

  @override
  void talk() {
    // TODO: implement talk
    print('meow');
  }

}

class Dog implements Animal{
  @override
  late int age;

  @override
  late String name;

  Dog(String name, int age);

  @override
  void growl() {
    // TODO: implement growl
  }

  @override
  void talk() {
    // TODO: implement talk
    print('bark');

  }

}

void main(){
  final cat = Cat(name: 'Ginger', age: 5);
  final dog = Dog('Doggy', 1);
  cat.talk();
  dog.talk();
  cat.growl();
}