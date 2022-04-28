import 'dart:io';
import 'package:capstone_dart/data.dart';

import 'package:capstone_dart/validations.dart';

void login() {
  print('########## LOGIN ##########');
  String emailAddressInput = validateLoginEmailAddress();
  String passwordInput = validateLoginPassword(emailAddressInput);

}


