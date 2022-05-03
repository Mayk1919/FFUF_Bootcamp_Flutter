import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/profileDashboard.dart';
import 'package:capstone_dart/validations.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class Employee {
  late int employeeId;
  late String firstName;
  late String lastName;
  late String address;
  late String gender;
  late int mobileNumber;
  late String email;
  late String birthday;
  late String department;
  late String password;
  bool isAdmin = false;
  bool isLoggedIn = false;
  double salaryRate = 0.0;
  double totalHoursWorked = 0.0;
  Map<int, dynamic> workRecords = {};
  int totalLeaves = 0;
  int appliedLeaves = 0;
  Map<int, dynamic> leaveStatus = {};
  Map<int, dynamic> jobOrders = {};

  Employee({
    required this.employeeId,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.gender,
    required this.mobileNumber,
    required this.email,
    required this.birthday,
    required this.department,
    required this.password,
    required this.isAdmin,
    required this.isLoggedIn,
    required this.salaryRate,
    required this.totalHoursWorked,
    required this.workRecords,
    required this.totalLeaves,
    required this.appliedLeaves,
    required this.leaveStatus,
    required this.jobOrders,
  });

  @override
  String toString() =>
      'Employee Profile\n   Employee Id: ${employeeId}\n   First Name: ${firstName}\n   Last Name: ${lastName}\n   Mobile Number: ${mobileNumber}\n   Email: ${email}\n   Address: ${address}\n   Birthday: ${birthday}\n   Gender: ${gender}\n   Department: ${department}\n';

  void viewJobOrders() {
    print('########## JOB ORDERS ##########');
    print('');
    if (jobOrders.isEmpty) {
      print('No Records Found');
    } else {
      jobOrders.forEach((key, value) {
        print(
            ' Job Order ID: ${jobOrders[key]['jobOrderId']}\n Job Description:${jobOrders[key]['job']}\n Date Posted: ${jobOrders[key]['jobPostedDate']}\n Job Deadline:${jobOrders[key]['jobDeadline']}\n Job Closed Date: ${jobOrders[key]['jobClosedDate']}\n Status: ${jobOrders[key]['status']}\n Comment: ${jobOrders[key]['comment']}\n');
      });
    }
    dashboardOption(employeeId);
  }

  void viewHoursWorked() {
    print('########## HOURS WORKED ##########');
    print('');
    if (workRecords.isEmpty) {
      print('No Records Found');
    } else {
      workRecords.forEach((key, value) {
        var format = DateFormat("HH:mm");
        var start = format.parse(workRecords[key]['start']);
        var end = format.parse(workRecords[key]['end']);
        var totalMinutes = (end.difference(start)).inMinutes - 60;
        int hours = totalMinutes ~/ 60;
        int minutes = totalMinutes % 60;
        print(
            ' Date: ${workRecords[key]['date']}\n Job Description:${workRecords[key]['start']}\n Date Posted: ${workRecords[key]['end']}\n Total Hours Worked: ${hours} hour ${minutes} minutes \n');
      });
    }
    dashboardOption(employeeId);
  }

  double computeTotalHoursWorked() {
    double totalHours = 0;
    var currDt = DateTime.now();
    var currentMonth = currDt.month;

    workRecords.forEach((key, value) {
      var parseWorkMonth = DateTime.parse(workRecords[key]['date']);
      var workMonth = parseWorkMonth.month;
      if (workMonth == currentMonth) {
        var format = DateFormat("HH:mm");
        var start = format.parse(workRecords[key]['start']);
        var end = format.parse(workRecords[key]['end']);
        var totalMinutes = (end.difference(start)).inMinutes - 60;
        totalHours += totalMinutes / 60;
      }
    });
    return totalHours;
  }

  void viewLeaveApplication() {
    print('########## LEAVE STATUS ##########');
    print('');
    if (leaveStatus.length == 0) {
      print('No Records Found');
    } else {
      leaveStatus.forEach((key, value) {
        print(
            ' Date: ${leaveStatus[key]['date']}\n Status:${leaveStatus[key]['forApproval'] ? 'For Approval' : leaveStatus[key]['isApprove'] ? 'Approve' : 'Denied'}\n Reason: ${leaveStatus[key]['reason']}\n Comment: ${leaveStatus[key]['comment']}\n');
      });
    }
    dashboardOption(employeeId);
  }

  void leaveApplication() {
    print('########## LEAVE APPLICATION ##########\n');
    print('Please enter date of leave[YYYY-MM-DD]: ');
    String leaveDate = validateDateInput();
    print('Please enter reason: ');
    String leaveReason = validateStringInput();
    print('\nSubmit your leave application?');
    print('[1] Yes');
    print('[2] No');
    print('[3] Return to Dashboard');
    print('[4] Exit');
    leaveApplicationOption(
        {'date': leaveDate, 'reason': leaveReason}, employeeId);
  }

  void saveLeaveApplication(Map<String, String> leave) {
    int lastValue = leaveStatus.keys.last + 1;
    employeeList[employeeId]['leaveStatus'][lastValue] = {
      'date': leave['date']!,
      'reason': leave['reason']!,
      'forApproval': true,
      'isApprove': false,
      'comment': '',
    };

    print('You have submitted a leave');
    displayProfile(employeeId);
  }

  void editProfile() {
    print('########## EDIT PROFILE ##########\n');
    print('Which field do you want to edit?');
    print('[1] First Name:');
    print('[2] Last Name: ');
    print('[3] Gender:');
    print('[4] Address:');
    print('[5] Mobile Number:');
    print('[6] Email:');
    print('[7] Birthday:');
    print('[8] Department:');
    print('[9] Return to Dashboard');

    String input = '';
    while (input == '') {
      input = stdin.readLineSync()!;
      switch (input) {
        case '1':
          {
            print('Enter new Last Name: ');
            String editInput = validateStringInput();
            employeeList[employeeId]['firstName'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '2':
          {
            print('Enter new Last Name: ');
            String editInput = validateStringInput();
            employeeList[employeeId]['lastName'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '3':
          {
            print('Enter new Gender [M/F]: ');
            String editInput = validateGenderInput();
            employeeList[employeeId]['gender'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '4':
          {
            print('Enter new Address: ');
            String editInput = validateStringInput();
            employeeList[employeeId]['address'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '5':
          {
            print('Enter new Mobile Number: ');
            int editInput = validateIntInput();
            employeeList[employeeId]['mobileNumber'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '6':
          {
            print('Enter new Email: ');
            String editInput = validateEmailInput();
            employeeList[employeeId]['email'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '7':
          {
            print('Enter new First Name: ');
            String editInput = validateDateInput();
            employeeList[employeeId]['birthday'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '8':
          {
            print('Enter new Department: ');
            String editInput = validateStringInput();
            employeeList[employeeId]['department'] = editInput;
            displayProfile(employeeId);
          }
          break;
        case '9':
          {
            displayProfile(employeeId);
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

  void changePassword() {
    String input = '';
    String newInput = '';
    String confirmNewInput = '';
    print('########## CHANGE PASSWORD ##########');
    print('Enter your old password');
    while (input != password) {
      input = validatePasswordInput();
      if (input != password) {
        print('Please enter the correct password');
      }
    }
    print('Enter new password');
    newInput = validatePasswordInput();
    print('Confirm new password');
    confirmNewInput = validateConfirmPasswordInput(newInput);
    print('Your new password has been saved');
    employeeList[employeeId]['password'] = newInput;
    displayProfile(employeeId);
  }
}
