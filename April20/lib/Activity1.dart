class Student {
  final String firstName;
  final String lastName;
  final int grade;

  const Student({
    required this.firstName,
    required this.lastName,
    required this.grade,
  });

  @override
  String toString() => 'Student name: $lastName, $firstName, Grade: $grade ';
}

void main() {
  const student1 = Student(
    firstName: 'Luna',
    lastName: 'Ketchum',
    grade: 95,
  );
  const student2 = Student(
    firstName: 'Liam',
    lastName: 'Ketchum',
    grade: 85,
  );

  print(student1);
  print(student2);
}
