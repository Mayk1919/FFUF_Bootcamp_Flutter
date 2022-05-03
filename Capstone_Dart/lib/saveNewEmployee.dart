import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/main.dart';

void saveNewEmployee({
  required String firstName,
  required String lastName,
  required String address,
  required String birthday,
  required String gender,
  required int mobileNumber,
  required String email,
  required String department,
  required String password,
}) {
  int count = 0;
  int lastId = employeeList.keys.last + 1;
  List<String> employeeListKeys = [
    'employeeId',
    'firstName',
    'lastName',
    'address',
    'gender',
    'mobileNumber',
    'email',
    'birthday',
    'department',
    'password',
  ];
  List<dynamic> employeeListValues = [
    lastId,
    firstName,
    lastName,
    address,
    gender,
    mobileNumber,
    email,
    birthday,
    department,
    password,
  ];

  employeeList[lastId] = employeeList[0];

  employeeListKeys.forEach((key) {
    employeeList[lastId][key] = employeeListValues[count];
    count += 1;
  });
  main();
}
