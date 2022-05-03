import 'dart:io';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/login.dart';
import 'package:capstone_dart/register.dart';
import 'package:capstone_dart/saveNewEmployee.dart';
import 'package:capstone_dart/validations.dart';
import 'package:capstone_dart/forgotPassword.dart';
import 'package:capstone_dart/profileDashboard.dart' hide main;
import 'package:capstone_dart/main.dart';
import 'package:capstone_dart/adminDashboard.dart' hide main;
import 'package:capstone_dart/filter.dart';

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
  print('[4] View employees');
  print('[5] View Job Order');
  print('[6] Log out');
  print('[7] Exit');




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
          adminViewLeavesOption( id);
        }
        break;
      case '4':
        {
          adminViewEmployeeOption( id);
        }
        break;
      case '5':
        {

        }
        break;
      case '6':
        {
          admin.isLoggedIn = false;
          main();
        }
        break;
      case '7':
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

void adminViewLeavesOption(int id){

  String input = '';
  print('\nWhat do you want to do?');
  print('[1] View all Leaves');
  print('[2] Filter the Leave View');
  print('[3] Dashboard');
  print('[4] Log out');

  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':{
        admin.viewAllLeaves();
      }
      break;
      case '2':
        {String filterInput = '';
        print('\nWhat do you want to filter?');
        print('[1] Filter by Month');
        print('[2] Filter by Year');
        print('[3] Filter by  Name');
        print('[4] Filter by Employee ID');
        print('[5] Filter by Approval');
        print('[6] Filter by Status');
        print('[7] Dashboard');
        print('[8] Log out');
        while (filterInput == '') {
          filterInput = stdin.readLineSync()!;
          switch (filterInput) {
            case '1':{
              admin.viewFilteredLeaves( leaveFilterByMonth(validateMonthInput(),validateYearInput()));

            }
            break;
            case '2':{
              admin.viewFilteredLeaves( leaveFilterByYear(validateYearInput()));
            }
            break;
            case '3':{
              print('Enter employee Last Name:');
              String lastName = validateStringInput();
              print('Enter employee First Name:');
              String firstName = validateStringInput();
              admin.viewFilteredLeaves(leaveFilterByName(lastName,firstName));
            }
            break;
            case '4':{
              print('Enter Employee ID:');
              int employeeId = validateIntInput();
              admin.viewFilteredLeaves(leaveFilterById(employeeId));
            }
            break;
            case '5':{
              print('[1] Declined Leaves');
              print('[2] Approved Leaves');
              int leaveChoice = 0;
              while (leaveChoice !=1 && leaveChoice != 2){
                leaveChoice = validateIntInput();
                if(leaveChoice !=1 && leaveChoice != 2){
                  print('Invalid Input');
                }
              }

              admin.viewFilteredLeaves(leaveFilterByApproval(leaveChoice));
            }
            break;
            case '6':{
              admin.viewLeavesForApproval();
            }
            break;
            case '7':{
              adminDisplay( id);
            }
            break;
            case '8':{
              admin.isLoggedIn = false;
              main();

            }
            break;
            default:{
              print('Please enter a valid value');
              filterInput = '';
            }

          }
        }

        }
        break;
      case '3':{
        adminDisplay(id);
      }
      break;
      case '4':{
        admin.isLoggedIn = false;
        main();

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

void adminViewEmployeeOption(int id){

  String input = '';
  print('\nWhat do you want to do?');
  print('[1] View all Employees');
  print('[2] Filter the Employees View');
  print('[3] Edit or Update Employee Profile ');
  print('[4] Delete an Employee Profile');
  print('[5] Dashboard');
  print('[6] Log out');

  while (input == '') {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':{
        Map employeeMap ={'searchAll': true,};
        employeeMap.addAll(employeeList);
        admin.viewEmployees( employeeMap);
      }
      break;
      case '2':
        {String filterInput = '';
        print('\nWhat do you want to filter?');
        print('[1] Filter by First Name');
        print('[2] Filter by Last Name');
        print('[3] Filter by  Employee ID');
        print('[4] Edit or Update Employee Profile ');
        print('[5] Delete an Employee Profile');
        print('[6] Filter by ');
        print('[7] Dashboard');
        print('[8] Log out');
        while (filterInput == '') {
          filterInput = stdin.readLineSync()!;
          switch (filterInput) {
            case '1':{
              print('Enter First Name');
              String firstName = validateStringInput();
              admin.viewEmployees( searchEmployeeByName(firstName : firstName));

            }
            break;
            case '2':{
              print('Enter First Name');
              String lastName = validateStringInput();
              admin.viewEmployees( searchEmployeeByName(lastName : lastName));
            }
            break;
            case '3':{

            }
            break;
            case '4':{

            }
            break;
            case '5':{

              }



            break;
            case '6':{

            }
            break;
            case '7':{

            }
            break;
            case '8':{
              admin.isLoggedIn = false;
              main();

            }
            break;
            default:{
              print('Please enter a valid value');
              filterInput = '';
            }

          }
        }

        }
        break;
      case '3':{
        adminDisplay(id);
      }
      break;
      case '4':{
        adminDisplay(id);
      }
      break;
      case '5':{
        adminDisplay(id);
      }
      break;
      case '6':{
        admin.isLoggedIn = false;
        main();

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


