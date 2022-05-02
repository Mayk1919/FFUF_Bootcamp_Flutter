import 'dart:io';
import 'package:capstone_dart/login.dart';
import 'package:capstone_dart/register.dart';
import 'package:capstone_dart/saveNewEmployee.dart';
import 'package:capstone_dart/validations.dart';
import 'package:capstone_dart/forgotPassword.dart';
import 'package:capstone_dart/profileDashboard.dart' hide main;
import 'package:capstone_dart/main.dart';
import 'package:capstone_dart/adminDashboard.dart' hide main;

void dashboardOption(int id) {
  String input = '';
  print('\nWhat do you want to do?');
  print('[1] View your Job Orders');
  print('[2] View your Hours Worked');
  print('[3] View applied leaves');
  print('[4] Apply for a Leave');
  print('[5] Edit your Profile');
  print('[6] Change your Password');
  print('[7] Dashboard');
  print('[8] Log out');
  if(employee.isAdmin){
    print('[9] Admin');
    print('[10] Exit');
  }
  else{
    print('[9] Exit');
  }


  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          employee.viewJobOrders();
        }
        break;
      case '2':
        {
          employee.viewHoursWorked();
        }
        break;
      case '3':
        {
          employee.viewLeaveApplication();
        }
        break;
      case '4':
        {
          employee.leaveApplication();
        }
        break;
      case '5':
        {
          employee.editProfile();
        }
        break;
      case '6':
        {
          employee.changePassword();
        }
        break;
      case '7':
        {
          displayProfile(id);
        }
        break;

      case '8':
        {
          main();
        }
        break;
      case '9':
        {
          employee.isAdmin ? adminDisplay(id) : exit(0);
        }
        break;
      case '10':
        {
          employee.isAdmin ? exit(0) : 'Please enter a valid value';
        }
        break;
      default:
        {
          print('Please enter a valid value');
          input='';
        }
    }
  }
}

void adminDashboardOption(int id) {
  String input = '';
  print('\nWhat do you want to do?');
  print('[1] Go to your Profile Dashboard');
  print('[2] View leaves for approval');
  print('[3] View all leaves');
  print('[4] Apply for a Leave');
  print('[5] Edit your Profile');
  print('[6] Change your Password');
  print('[7] Dashboard');
  print('[8] Log out');
  if(employee.isAdmin){
    print('[9] Admin');
    print('[10] Exit');
  }
  else{
    print('[9] Exit');
  }


  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          displayProfile(id);
        }
        break;
      case '2':
        {
          admin.viewLeavesForApproval();
        }
        break;
      case '3':
        {
          admin.viewAllLeaves();
        }
        break;
      case '4':
        {
          employee.leaveApplication();
        }
        break;
      case '5':
        {
          employee.editProfile();
        }
        break;
      case '6':
        {
          employee.changePassword();
        }
        break;
      case '7':
        {
          displayProfile(id);
        }
        break;

      case '8':
        {
          main();
        }
        break;
      case '9':
        {
          exit(0);
        }
        break;
      default:
        {
          print('Please enter a valid value');
        }
    }
  }
}

void registerOption({
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
  String input = '';
  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          saveNewEmployee(
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
        break;
      case '2':
        {
          register();
        }
        break;
      case '3':
        exit(0);
      default:
        {
          print('Please enter a correct value');
          input = '';
        }
    }
  }
}

void loginEmailOption() {
  String input = '';
  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          register();
        }
        break;
      case '2':
        {
          print('');
        }
        break;
      case '3':
        {
          exit(0);
        }
        break;
      default:
        {
          print('Please enter a valid value');
          input = '';
        }
    }
  }
}

void loginPasswordOption(int id,String email) {
  print('You have entered an incorrect password\n');
  print('Forgot your Password?');
  print('[1] Update Password');
  print('[2] Enter another Password');
  print('[3] Quit');
  String input = '';
  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          forgetPassword(id);
        }
        break;
      case '2':
        {
          validateLoginPassword(email);
        }
        break;
      case '3':
        {
          exit(0);
        }
        break;
      default:
        {
          print('Please enter a valid value');
          input = '';
        }
    }
  }
}

void leaveApplicationOption(Map<String, String> leave, int id) {
  String input = '';
  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        {
          employee.saveLeaveApplication(leave);
        }
        break;
      case '2':
        {
          employee.leaveApplication();
        }
        break;
      case '3':
        {
          displayProfile(id);
        }
        break;
      case '4':
        {
          exit(0);
        }
        break;
      default:
        {
          print('Please enter a valid value');
          input = '';
        }
    }
  }
}


