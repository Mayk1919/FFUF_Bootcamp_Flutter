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
          print(
              'Reason : ${employeeList[key]['leaveStatus'][key2]['reason']}\n');
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
      if (input == '1') {
        employeeList[id]['leaveStatus'][leaveId]['forApproval'] = false;
        employeeList[id]['leaveStatus'][leaveId]['isApprove'] = true;
        viewLeavesForApproval();
      } else if (input == '2') {
        employeeList[id]['leaveStatus'][leaveId]['forApproval'] = false;
        employeeList[id]['leaveStatus'][leaveId]['isApprove'] = false;
        viewLeavesForApproval();
      } else if (input == '3') {
        viewLeavesForApproval();
      } else {
        print('Enter a valid value:');
        input = '';
      }
    }
  }

  int allJobInProgressCount() {
    int count = 0;
    employeeList.forEach((key, value) {
      employeeList[key]['jobOrders'].forEach((key2, value2) {
        if (employeeList[key]['jobOrders'][key2]['status'] == 'In Progress') {
          count += 1;
        }
      });
    });
    return count;
  }

  void viewAllLeaves() {
    print('########## EMPLOYEE LEAVES ##########\n');
    employeeList.forEach((key, value) {
      employeeList[key]['leaveStatus'].forEach((key2, value2) {
        print('Employee ID: ${employeeList[key]['employeeId']}');
        print('Employee First Name: ${employeeList[key]['firstName']}');
        print('Employee Last Name: ${employeeList[key]['lastName']}');
        print('Employee Department: ${employeeList[key]['department']}');
        print('Request ID : ${key2}');
        print('Date : ${employeeList[key]['leaveStatus'][key2]['date']}');
        print('Reason : ${employeeList[key]['leaveStatus'][key2]['reason']}\n');
      });
    });
    adminViewLeavesOption(employeeId);
  }

  void viewFilteredLeaves(Map leaveMap) {
    int countLeaves = 0;
    print(leaveMap['filterByApproval']
        ? '########## ${leaveMap['isLeaveApprove'] ? 'APPROVED' : 'DECLINED'} LEAVES ##########\n'
        : leaveMap['filterByName'] || leaveMap['filterById']
            ? '########## LEAVES OF ${(leaveMap['filterByName'] ? leaveMap['lastName'] : leaveMap[leaveMap['employeeId']]['lastName']).toString().toUpperCase()}, ${(leaveMap['filterByName'] ? leaveMap['firstName'] : leaveMap[leaveMap['employeeId']]['firstName']).toString().toUpperCase()} ##########\n'
            : '########## EMPLOYEE LEAVES FOR THE MONTH OF ${leaveMap['filterByMonth'] ? leaveMap['month'] : ''} ${leaveMap['year']} ##########\n');
    leaveMap.forEach((key, value) {
      if (key.runtimeType == int) {
        print('Employee ID: ${leaveMap[key]['employeeId']}');
        print('Employee First Name: ${leaveMap[key]['firstName']}');
        print('Employee Last Name: ${leaveMap[key]['lastName']}');
        print('Employee Department: ${leaveMap[key]['department']}');
        print('Request ID : ${leaveMap[key]['requestId']}');
        print('Date : ${leaveMap[key]['date']}');
        print('Reason : ${leaveMap[key]['reason']}\n');
        countLeaves += 1;
      }
    });
    if (countLeaves == 0) {
      print('No Records Found');
    }
    adminViewLeavesOption(employeeId);
  }



  void viewEmployees(Map employeeMap){
    int countEmployee = 0;
    print(employeeMap['searchAll']
        ?'##########  LIST OF ALL EMPLOYEES ##########\n'
        : employeeMap['filterByFirstName'] ||  employeeMap['filterByLastName']
          ? '##########  LIST OF ALL EMPLOYEES WITH ${employeeMap['filterByFirstName'] ? 'FIRST NAME ${employeeMap['searchedName']}':'LAST NAME ${employeeMap['searchedName']}'} ##########\n'
          :'' );


    employeeMap.forEach((key, value) {
      if (key.runtimeType == int) {
        print('Employee ID: ${employeeMap[key]['employeeId']}');
        print('Employee First Name: ${employeeMap[key]['firstName']}');
        print('Employee Last Name: ${employeeMap[key]['lastName']}');
        print('Employee Department: ${employeeMap[key]['department']}');
        print('');

        countEmployee += 1;
      }
    });
    if (countEmployee == 0) {
      print('No Records Found');
    }
    adminViewEmployeeOption(employeeId);
  }
}
