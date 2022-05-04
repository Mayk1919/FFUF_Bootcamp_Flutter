import 'dart:io';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/filter.dart';

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

int validateYearInput() {
  String input;
  int yearInput = 0;
  int? inputCheck;
  print('Enter the year?');

  while (yearInput <= 1900) {
    input = stdin.readLineSync()!;
    inputCheck = int.tryParse(input);
    if (inputCheck != null) {
      yearInput = inputCheck;
    }
    if (yearInput <= 1900) {
      print('Enter an valid Value');
      yearInput = 0;
    }
  }

  return yearInput;
}

int validateMonthInput() {
  String input;
  int monthInput = 0;
  int? inputCheck;
  print('Enter the month value [1-12]?');

  while (monthInput < 1 || monthInput > 12) {
    input = stdin.readLineSync()!;
    inputCheck = int.tryParse(input);
    if (inputCheck != null) {
      monthInput = inputCheck;
    }
    if (monthInput < 1 || monthInput > 12) {
      print('Enter an valid Value');
      monthInput = 0;
    }
  }

  return monthInput;
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

bool validateValidEmployeeId(int id) {
  bool isValidEmployeeId = false;
  employeeList.forEach((key, value) {
    if (employeeList[key]['employeeId'] == id) {
      isValidEmployeeId = true;
    }
  });
  return isValidEmployeeId;
}

double validateDoubleInput() {
  double? validatedInput;
  while (validatedInput == null) {
    validatedInput = double.tryParse(stdin.readLineSync()!);
    if (validatedInput == null) {
      print('Please enter a valid double');
    }
  }
  return validatedInput;
}

bool validateBoolInput() {
  late bool validatedInput;
  String input = '';
  while (input == '') {
    input = stdin.readLineSync()!.toLowerCase();
    if (input != 'true' && input != 'false') {
      print('Please enter "true" or "false');
      input = '';
    } else {
      validatedInput = input == 'true';
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

bool isPasswordCorrect(String password, String email) {
  bool validatedInput = false;
  employeeList.forEach((key, value) {
    if (employeeList[key]['email'] == email) {
      if (employeeList[key]['password'] == password) {
        validatedInput = true;
      }
      else{
        print('Password not correct');
        loginPasswordOption(findEmployeeId(email),email);
      }
    }
  });
  return validatedInput;
}

bool isEmployeeAdmin(id) {
  bool validatedInput = false;
  employeeList[id]['isAdmin'] == true
      ? validatedInput = true
      : validatedInput = false;
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
    } else if (isEmailRegistered == false) {
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

bool validateLoginPassword(String email) {
  bool isLoginPasswordCorrect = false;
  String passwordInput = '';
  String confirmPasswordInput = '';

  bool isPasswordMatch = false;
  while (isPasswordMatch == false) {
    print('Enter your Password:');
    passwordInput = validatePasswordInput();
    print('Confirm your Password:');
    confirmPasswordInput = validateConfirmPasswordInput(passwordInput);
    isPasswordMatch = isPasswordCorrect(passwordInput, email);
    if (isPasswordMatch == true) {
      isLoginPasswordCorrect = true;
    }
  }
  return isLoginPasswordCorrect;
}
