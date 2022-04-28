import 'dart:io';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/profileDashboard.dart';

String validateStringInput() {
  String validatedInput = '';
  while (validatedInput == '') {
    validatedInput = stdin.readLineSync()!;
    if (validatedInput == '') {
      print('Please enter a valid value');
    }
  }
  return validatedInput;
}

String validateDateInput() {
  String validatedInput = '';
  DateTime? parseDt;
  while (validatedInput == '' || parseDt == null) {
    validatedInput = stdin.readLineSync()!;
    parseDt = DateTime.tryParse(validatedInput);
    if (validatedInput == '' || parseDt == null) {
      print('Please enter a valid date format [YYYY-MM-DD]');
    }
  }
  return validatedInput;
}

String validateGenderInput() {
  String validatedInput = '';
  while (validatedInput == '' ||
      !(validatedInput == 'Male' || validatedInput == 'Female')) {
    validatedInput = (stdin.readLineSync()!).toUpperCase();

    if (validatedInput == '' ||
        !(validatedInput == 'M' || validatedInput == 'F')) {
      print('Please enter a valid value [M/F]');
    } else if (validatedInput == 'M') {
      validatedInput = 'Male';
    } else if (validatedInput == 'F') {
      validatedInput = 'Female';
    }
  }
  return validatedInput;
}

int validateIntInput() {
  int? validatedInput;
  while (validatedInput == null) {
    validatedInput = int.tryParse(stdin.readLineSync()!);
    if (validatedInput == null) {
      print('Please enter a valid integer');
    }
  }
  return validatedInput;
}

String validateEmailInput() {
  String validatedInput = '';
  bool isEmailInputFormatValid = false;
  bool isEmailInputDuplicate = true;
  while (isEmailInputFormatValid == false || isEmailInputDuplicate == true) {
    validatedInput = stdin.readLineSync()!;
    isEmailInputFormatValid = isEmailFormatValid(validatedInput);
    isEmailInputDuplicate = isEmailDuplicate(validatedInput);
    if (isEmailInputFormatValid == false) {
      print('Please enter a valid email format');
    }
    if (isEmailInputDuplicate == true) {
      print('Email already exist. Enter another email.');
    }
  }
  return validatedInput;
}

bool isEmailFormatValid(String email) {
  bool validatedInput = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return validatedInput;
}

bool isEmailDuplicate(String email) {
  bool validatedInput = false;
  employeeList.forEach((key, value) {
    if (employeeList[key]['email'] == email) {
      validatedInput = true;
    }
  });
  return validatedInput;
}

String validatePasswordInput() {
  String validatedInput = '';
  while (validatedInput == '' || validatedInput.length < 8) {
    validatedInput = stdin.readLineSync()!;
    if (validatedInput == '') {
      print('Please enter a valid value');
    } else if (validatedInput.length < 8) {
      print('Password must be 8 or more character');
    }
  }
  return validatedInput;
}

String validateConfirmPasswordInput(String password) {
  String validatedInput = '';
  while (validatedInput == '' ||
      validatedInput.length < 8 ||
      validatedInput != password) {
    validatedInput = stdin.readLineSync()!;
    if (validatedInput == '') {
      print('Please enter a valid value');
    } else if (validatedInput.length < 8) {
      print('Password must be 8 or more character');
    } else if (validatedInput != password) {
      print('Your entry does not much the Password. Please enter again');
    }
  }
  return validatedInput;
}

bool isPasswordCorrect(String password,String email){
  bool validatedInput = false;
  employeeList.forEach((key, value) {
    if (employeeList[key]['email'] == email) {
      if(employeeList[key]['password'] == password) {
        validatedInput = true;
      }
    }
  });
  return validatedInput;
}

int findEmployeeId(String email){
  int validatedInput = 0;
  employeeList.forEach((key, value) {
    if (employeeList[key]['email'] == email) {

        validatedInput = employeeList[key]['employeeId'];

    }
  });
  return validatedInput;
}

String validateLoginEmailAddress() {
  String input = '';
  bool isEmailRegistered = false;
  bool isEmailInputFormatValid = false;

  //Will keep asking for the email address until user entered a valid email format
  //and the email is in the records

  while (input == '' ||
      isEmailRegistered == false ||
      isEmailInputFormatValid == false) {
    //Ask user to input email address

    print('Enter your Email Address:');
    input = stdin.readLineSync()!;
    isEmailInputFormatValid = isEmailFormatValid(input);
    isEmailRegistered = isEmailDuplicate(input);
    //Check if user entered a valid email address

    if (isEmailInputFormatValid == false) {
      print('Invalid email address\n');
    }

    else if (isEmailRegistered == false) {
      print('\nThe email you entered cannot be found\n');
      print('Not yet Registered?');
      print('[1] Register');
      print('[2] Continue with Login');
      print('[3] Quit');
      loginEmailOption();
    }
  }

  return input;
}

String validateLoginPassword(String email) {
  String passwordInput = '';
  String confirmPasswordInput = '';
  int employeeId = findEmployeeId(email);
  bool isPasswordMatch = false;
  while (isPasswordMatch == false) {

    print('Enter your Password:');
    passwordInput = validatePasswordInput();
    print('Confirm your Password:');
    confirmPasswordInput = validateConfirmPasswordInput(passwordInput);
    isPasswordMatch = isPasswordCorrect(passwordInput,email);
    if(isPasswordMatch == true){
      print('You have Successfully Logged In\n');
      displayProfile(employeeId);
    }

    if(isPasswordMatch == false){
      print('You have entered an incorrect password\n');
      print('Forgot your Password?');
      print('[1] Update Password');
      print('[2] Enter another Password');
      print('[3] Quit');
      loginPasswordOption(employeeId);
    }

  }
  return passwordInput;
}
