import 'package:capstone_dart/adminDashboard.dart' hide main;
import 'package:capstone_dart/employee.dart';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/main.dart';
import 'package:capstone_dart/options.dart';
import 'dart:io';
import 'package:intl/intl.dart';

class Admin extends Employee {
  Admin({
    required int employeeId,
    required String firstName,
    required String lastName,
    required String address,
    required String gender,
    required int mobileNumber,
    required String email,
    required String birthday,
    required String department,
    required String password,
    required bool isAdmin,
    required bool isLoggedIn,
    required double salaryRate,
    required double totalHoursWorked,
    required Map<int, dynamic> workRecords,
    required int totalLeaves,
    required int appliedLeaves,
    required Map<int, dynamic> leaveStatus,
    required Map<int, dynamic> jobOrders,
  }) : super(
          employeeId: employeeId,
          firstName: firstName,
          lastName: lastName,
          address: address,
          gender: gender,
          mobileNumber: mobileNumber,
          email: email,
          birthday: birthday,
          department: department,
          password: password,
          isAdmin: isAdmin,
          isLoggedIn: isLoggedIn,
          salaryRate: salaryRate,
          totalHoursWorked: totalHoursWorked,
          workRecords: workRecords,
          totalLeaves: totalLeaves,
          appliedLeaves: appliedLeaves,
          leaveStatus: leaveStatus,
          jobOrders: jobOrders,
        );

  int leavesForApprovalCount() {
    int count = 0;
    Map leaveStatus = {};
    employeeList.forEach((key, value) {
      leaveStatus = employeeList[key]['leaveStatus'];
      leaveStatus.forEach((key2, value2) {
        if (employeeList[key]['leaveStatus'][key2]['forApproval']) {
          count += 1;
        }
      });
    });
    return count;
  }

  void viewLeavesForApproval() {
    String input = '';
    String requestId = '';
    Map leaveStatus = {};
    List<int> employeeIds = List.empty(growable: true);
    print('########## LEAVES FOR APPROVAL ##########\n');

    employeeList.forEach((key, value) {
      leaveStatus = employeeList[key]['leaveStatus'];
      leaveStatus.forEach((key2, value2) {
        if (employeeList[key]['leaveStatus'][key2]['forApproval']) {
          print('Employee ID: ${employeeList[key]['employeeId']}');
          print('Employee First Name: ${employeeList[key]['firstName']}');
          print('Employee Last Name: ${employeeList[key]['lastName']}');
          print('Employee Department: ${employeeList[key]['department']}');
          print('Request ID : ${key2}');
          print('Date : ${employeeList[key]['leaveStatus'][key2]['date']}');
          print('Reason : ${employeeList[key]['leaveStatus'][key2]['reason']}\n');
          employeeIds.add(employeeList[key]['employeeId']);
        }
      });
    });
    print('Enter employee ID number you want to approve ');
    print('or enter [Q] to go back to Admin Dashboard');
    bool inputLoop = true;
    while (input == '' && inputLoop == true) {
      input = stdin.readLineSync()!;
      if (input.toUpperCase() == 'Q') {
        adminDisplay(employeeId);
      }
      employeeIds.forEach((element) {
        if (element == int.tryParse(input)) {
          while (requestId == '') {
            print('Enter Request ID:');
            requestId = stdin.readLineSync()!;

            Map requestList = employeeList[element]['leaveStatus'];
            requestList.forEach((key, value) {
              if (key == int.tryParse(requestId) &&
                  value['forApproval'] == true) {
                approveLeave(int.parse(input), key);
              }
            });

            print('Request Id not valid. Enter a valid value:');
            requestId = '';
          }
        }
      });

      print('Enter a valid value:');
      input = '';
    }
  }

  void approveLeave(int id, int leaveId) {
    String name =
        '\n${employeeList[id]['lastName']}, ${employeeList[id]['firstName']}';
    String input = '';
    print(
        'Approve leave application of $name on ${employeeList[id]['leaveStatus'][leaveId]['date']}');
    print('[1] Yes');
    print('[2] No');
    print('[3] Back to Leave list');

    while (input == '') {
      input = stdin.readLineSync()!;
      if (input == '1'){
        employeeList[id]['leaveStatus'][leaveId]['forApproval'] = false;
        employeeList[id]['leaveStatus'][leaveId]['isApprove'] = true;
        viewLeavesForApproval();
      }
      else if(input == '2'){
        employeeList[id]['leaveStatus'][leaveId]['forApproval'] = false;
        employeeList[id]['leaveStatus'][leaveId]['isApprove'] = false;
        viewLeavesForApproval();
      }
      else if(input == '3'){
        viewLeavesForApproval();
      }
      else {
        print('Enter a valid value:');
        input = '';
      }
    }

  }

  int jobInProgressCount() {
    int count = 0;
    Map leaveStatus = {};
    employeeList.forEach((key, value) {
      leaveStatus = employeeList[key]['jobOrders'];
      leaveStatus.forEach((key2, value2) {
        if (employeeList[key]['jobOrders'][key2]['status'] == 'In Progress') {
          count += 1;
        }
      });
    });
    return count;
  }

  void viewAllLeaves(){

    String leaveMonth = '';
    print('########## EMPLOYEE LEAVES ${leaveMonth != '' ?'FOR THE MONTH OF $leaveMonth ' :''}##########\n');
  employeeList.forEach((key, value) {
    (employeeList[key]['leaveStatus']).forEach((key2, value2) {
      print('Employee ID: ${employeeList[key]['employeeId']}');
      print('Employee First Name: ${employeeList[key]['firstName']}');
      print('Employee Last Name: ${employeeList[key]['lastName']}');
      print('Employee Department: ${employeeList[key]['department']}');
      print('Request ID : ${key2}');
      print('Date : ${employeeList[key]['leaveStatus'][key2]['date']}');
      print('Reason : ${employeeList[key]['leaveStatus'][key2]['reason']}\n');

    });
  });

    String input = '';
    print('\nWhat do you want to do?');
    print('[1] Filter the Leave View');
    print('[2] Dashboard');
    print('[3] Log out');

    while (input == '') {
      input = stdin.readLineSync()!;
      switch (input) {
        case '1':
          {String filterInput = '';
            print('\nWhat do you want to filter?');
            print('[1] Filter by Month');
            print('[2] Filter by Year');
            print('[3] Filter by Name');
            print('[4] Filter by Employee ID');
            print('[5] Filter by Approval');
            print('[6] Filter by Status');
            print('[7] Dashboard');
            print('[8] Log out');
          while (filterInput == '') {
            filterInput = stdin.readLineSync()!;
            switch (filterInput) {
              case '1':{

              }
              break;
              case '2':{

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
        case '2':{
          adminDisplay(employeeId);
        }
        break;
        case '3':{
          main();
          admin.isLoggedIn = false;
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



}
