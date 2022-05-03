import 'package:capstone_dart/validations.dart';
import 'package:capstone_dart/options.dart';

void register() {
  print('########## REGISTER ##########');
  print('');
  print('Enter First Name: ');
  String firstName = validateStringInput();
  print('Enter Last Name: ');
  String lastName = validateStringInput();
  print('Enter Address: ');
  String address = validateStringInput();
  print('Enter Birthday [YYYY-MM-DD]: ');
  String birthday = validateDateInput();
  print('Enter Gender [M/F]: ');
  String gender = validateGenderInput();
  print('Enter Mobile Number: ');
  int mobileNumber = validateIntInput();
  print('Enter Email: ');
  String email = validateEmailInput();
  print('Enter Department: ');
  String department = validateStringInput();
  print('Enter Password: ');
  String password = validatePasswordInput();
  print('Confirm Password: ');
  String confirmPassword = validateConfirmPasswordInput(password);
  print('');
  print('Are all entries correct?');
  print('First Name: ${firstName}');
  print('Last Name: ${lastName}');
  print('Address: ${address}');
  print('Birthday: ${birthday}');
  print('Gender: ${gender}');
  print('Mobile Number: ${mobileNumber}');
  print('Email: ${email}');
  print('Department: ${department}');
  print('');
  print('[1] Correct. Proceed and Save');
  print('[2] Incorrect. Enter new values');
  print('[3] Quit');
  registerOption(
    firstName: firstName,
    lastName: lastName,
    address: address,
    birthday: birthday,
    gender: gender,
    mobileNumber: mobileNumber,
    email: email,
    department: department,
    password: password,
  );
}
