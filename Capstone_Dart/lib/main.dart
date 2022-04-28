import 'dart:io';
import 'package:capstone_dart/login.dart';
import 'package:capstone_dart/register.dart';
void main() {
  print('########## WELCOME TO EMS ##########');
  print('Please choose an option to proceed: ');
  print('[1] Log in');
  print('[2] Register');
  print('[3] Quit');
  String loginPageInput = stdin.readLineSync()!;
  switch (loginPageInput){
    case '1': login();
    break;
    case '2': register();
    break;
  }
}
