class Animal {
  final String name;

  Animal({required this.name});

  void whatAmI() => print('I am an animal');
  void chase(Animal a){

  }
}

class Mouse extends Animal{
  Mouse({required String name}) : super(name: 'Jerry');

}

class Cat extends Animal{
  Cat({required String name}) : super(name: 'Tom');

  @override
  void chase(covariant Mouse mouse){}
}

class Bird extends Animal {
  Bird({required String name}) : super(name: name);

  void fly() => print('can Fly');
}

class Duck extends Bird {
  Duck({required String name}) : super(name: name);

  @override
  void whatAmI() => print('I am a duck');

  void swim() => print('can swim');
}

void main() {
  Bird bird = Bird(name: 'Birdy');
  Duck duck = Duck(name: 'Ducky');

  print(duck.name);
  duck.whatAmI();
  duck.fly();
  bird.fly();
}
