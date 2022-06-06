void main() {
  final myObject = SubClass2() as SuperClass;

  if (myObject is SubClass1) {
  } else if (myObject is SubClass2) {}
  else if (myObject is SubClass3) {}
}

class SuperClass {}

class SubClass1 extends SuperClass {
  final int x = 123;
}

class SubClass2 extends SuperClass {
  final String y = 'Hello';
}

class SubClass3 extends SuperClass {
  final bool z= true;
}
