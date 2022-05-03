import 'package:capstone_dart/validations.dart';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/login.dart';

void forgetPassword(int id) {
  print('########## FORGOT PASSWORD ##########');
  print('Enter new password');
  String password = validatePasswordInput();
  print('Confirm Password: ');
  String confirmPassword = validateConfirmPasswordInput(password);

  employeeList[id]['password'] = password;
  login();
}
