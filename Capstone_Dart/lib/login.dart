import 'package:capstone_dart/profileDashboard.dart';
import 'package:capstone_dart/validations.dart';
import 'package:capstone_dart/filter.dart';
import 'package:capstone_dart/options.dart';

void login() {
  String emailAddressInput = validateLoginEmailAddress();
  bool passwordInputCorrect = validateLoginPassword(emailAddressInput);
  int employeeId = findEmployeeId(emailAddressInput);
  print('########## LOGIN ##########');
  if (passwordInputCorrect) {
    print('You have Successfully Logged In\n');
    displayProfile(employeeId);
  } else {
    loginPasswordOption(employeeId, emailAddressInput);
  }
}
