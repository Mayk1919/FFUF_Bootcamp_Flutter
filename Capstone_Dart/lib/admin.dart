import 'package:capstone_dart/adminDashboard.dart';
import 'package:capstone_dart/employee.dart';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/validations.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:capstone_dart/filter.dart';

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

  void viewEmployees(Map employeeMap) {
    int countEmployee = 0;
    print(employeeMap['searchAll']
        ? '##########  LIST OF ALL EMPLOYEES ##########\n'
        : employeeMap['filterByFirstName'] || employeeMap['filterByLastName']
            ? '##########  LIST OF ALL EMPLOYEES WITH ${employeeMap['filterByFirstName'] ? 'FIRST NAME ${employeeMap['searchedName'].toString().toUpperCase()}' : 'LAST NAME ${employeeMap['searchedName'].toString().toUpperCase()}'} ##########\n'
            : '##########  LIST OF EMPLOYEE WITH EMPLOYEE ID ${employeeMap['searchedId']} ##########\n');

    employeeMap.forEach((key, value) {
      if (key.runtimeType == int) {
        print('Employee ID: ${employeeMap[key]['employeeId']}');
        print(' First Name: ${employeeMap[key]['firstName']}');
        print(' Last Name: ${employeeMap[key]['lastName']}');
        print(' Department: ${employeeMap[key]['department']}');
        print(' Birthday: ${employeeMap[key]['birthday']}');
        print(' Gender: ${employeeMap[key]['gender']}');
        print(' Address: ${employeeMap[key]['address']}');
        print(' Mobile Number: ${employeeMap[key]['mobileNumber']}');
        print(' Email: ${employeeMap[key]['email']}');
        print(' Is Admin: ${employeeMap[key]['isAdmin']}');
        print(' Salary: ${employeeMap[key]['salaryRate']}');
        print(' Work Records: ');
        employeeMap[key]['leaveStatus'].forEach((key2, value2) {
          print('   Record No.: $key2');
          print('     Date: ${employeeMap[key]['workRecords'][key2]['date']}');
          print('     Date: ${employeeMap[key]['workRecords'][key2]['start']}');
          print('     Date: ${employeeMap[key]['workRecords'][key2]['end']}');
        });
        print(' Total Leaves: ${employeeMap[key]['totalLeaves']}');
        print(' Leave Status:');
        employeeMap[key]['leaveStatus'].forEach((key2, value2) {
          print('   Request No.: $key2');
          print('     Date: ${employeeMap[key]['leaveStatus'][key2]['date']}');
          print(
              '     Status: ${employeeMap[key]['leaveStatus'][key2]['forApproval'] ? 'Waiting for Approval' : employeeMap[key]['leaveStatus'][key2]['isApprove'] ? 'Approved' : 'Declined'}');
          print(
              '     Reason: ${employeeMap[key]['leaveStatus'][key2]['reason']}');
          print(
              '     Comment: ${employeeMap[key]['leaveStatus'][key2]['comment']}');
        });
        print(' Job Orders: ');
        employeeMap[key]['jobOrders'].forEach((key2, value2) {
          print('   Job Order No.: $key2');
          print('     Job: ${employeeMap[key]['jobOrders'][key2]['job']}');
          print(
              '     Job Posted Date: ${employeeMap[key]['jobOrders'][key2]['jobPostedDate']}');
          print(
              '     Job Deadline: ${employeeMap[key]['jobOrders'][key2]['jobDeadline']}');
          print(
              '     Job Closed Date: ${employeeMap[key]['jobOrders'][key2]['jobClosedDate']}');
          print(
              '     Status: ${employeeMap[key]['jobOrders'][key2]['status']}');
          print(
              '     Comment: ${employeeMap[key]['jobOrders'][key2]['comment']}');
        });
        print('');

        countEmployee += 1;
      }
    });
    if (countEmployee == 0) {
      print('No Records Found');
    }
    adminViewEmployeeOption(employeeId);
  }

  void editEmployeeProfile(int id, String field, dynamic newValue) {
    Map employeeProfile = employeeList[id];
    employeeProfile.forEach((key, value) {
      if (key == field) {
        employeeList[id][field] = newValue;
        adminViewEmployeeOption(id);
      }
    });
    adminViewEmployeeOption(id);
  }

  void deleteEmployeeProfile(int id) {
    employeeList.remove(id);
    adminViewEmployeeOption(id);
  }

  void viewAllJobOrders(Map jobOrders) {
    print(jobOrders['all']
        ? '########## JOB ORDERS ##########\n'
        : jobOrders['inProgress']
            ? '########## JOB ORDERS IN PROGRESS ##########\n'
            : jobOrders['completed']
                ? '########## JOB ORDERS COMPLETED ##########\n'
                : '');

    if (jobOrders.isEmpty) {
      print('No Records Found');
    } else {
      jobOrders.forEach((key, value) {
        if (key.runtimeType == int) {
          print('Employee ID: ${jobOrders[key]['employeeId']}');
          print('Employee First Name: ${jobOrders[key]['firstName']}');
          print('Employee Last Name: ${jobOrders[key]['lastName']}');
          print('Employee Department: ${jobOrders[key]['department']}');
          print('Employee Job Order Id: ${jobOrders[key]['jobOrderId']}');
          print('Employee Job: ${jobOrders[key]['job']}');
          print('Employee Job Posted Date: ${jobOrders[key]['jobPostedDate']}');
          print('Employee Job Dead line: ${jobOrders[key]['jobDeadline']}');
          print('Employee Job Closed Date: ${jobOrders[key]['jobClosedDate']}');
          print('Employee Status: ${jobOrders[key]['status']}');
          print('Employee Comment: ${jobOrders[key]['comment']}');
          print('');
        }
      });
    }
    adminViewJobOrderOption(employeeId);
  }

  void createNewJobOrder() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String dateToday = formatter.format(now);
    String input = '';
    print('########## CREATE NEW JOB ORDERS ##########\n');
    print('Enter Employee ID who will perform the job');
    int id = 0;
    while (validateValidEmployeeId(id) == false) {
      id = validateIntInput();
      if (validateValidEmployeeId(id) == false) {
        print('Invalid Employee ID');
      }
    }
    print('Enter Job Description');
    String job = validateStringInput();
    print('Enter Job Deadline [YYYY-MM-DD]');
    String date = validateDateInput();

    print('Are you sure to place job order');
    print('[1] Yes');
    print('[2] No Back to previous menu');

    while (input == '') {
      input = stdin.readLineSync()!;
      switch (input) {
        case '1':
          {
            int count = 0;
            employeeList[id]['jobOrders'].forEach((key, value) {
              count += 1;
            });
            employeeList[id]['jobOrders'][count + 1] = {
              'jobOrderId': count + 1,
              'job': job,
              'jobPostedDate': dateToday,
              'jobDeadline': date,
              'jobClosedDate': '',
              'status': 'In Progress',
              'comment': ''
            };
            adminViewJobOrderOption(id);
          }
          break;
        case '2':
          {
            adminViewJobOrderOption(id);
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

  void editJobOrder() {
    String input = '';
    int lastJobOrderId = 0;
    Map jobOrderMap = {};
    print('########## EDIT JOB ORDERS ##########\n');
    print('Enter Employee ID that you will update the job order');
    int id = 0;
    while (validateValidEmployeeId(id) == false) {
      id = validateIntInput();
      if (validateValidEmployeeId(id) == false) {
        print('Invalid Employee ID');
      }
    }
    jobOrderMap = allJobOrdersById(id);
    if (jobOrderMap.isEmpty) {
      print('No Records Found');
    } else {
      jobOrderMap.forEach((key, value) {
        if (key.runtimeType == int) {
          print('Employee Job Order Id: ${jobOrderMap[key]['jobOrderId']}');
          print('Employee Job: ${jobOrderMap[key]['job']}');
          print(
              'Employee Job Posted Date: ${jobOrderMap[key]['jobPostedDate']}');
          print('Employee Job Dead line: ${jobOrderMap[key]['jobDeadline']}');
          print(
              'Employee Job Closed Date: ${jobOrderMap[key]['jobClosedDate']}');
          print('Employee Status: ${jobOrderMap[key]['status']}');
          print('Employee Comment: ${jobOrderMap[key]['comment']}');
          print('');
          lastJobOrderId = jobOrderMap[key]['jobOrderId'];
        }
      });
    }
    int jobOrderId = 0;
    print('Enter the job order number you want to edit');
    while (jobOrderId == 0) {
      jobOrderId = validateIntInput();
      if (jobOrderId <= 0 || jobOrderId > lastJobOrderId) {
        print('Invalid Job Order ID');
        jobOrderId = 0;
      }
    }
    print('Which one you want to edit?');
    print('[1] Employee Job:');
    print('[2] Employee Job Dead line:');
    print('[3] Employee Job Closed Date:');
    print('[4] Employee Status:');
    print('[5] Employee Comment:');
    String editInput = '';

    while (editInput == '') {
      editInput = stdin.readLineSync()!;
      switch (editInput) {
        case '1':
          {
            print('Enter new value');
            String newValue = validateStringInput();
            print('Are you sure to place job order');
            print('[1] Yes');
            print('[2] No Back to previous menu');

            while (input == '') {
              input = stdin.readLineSync()!;
              switch (input) {
                case '1':
                  {
                    employeeList[id]['jobOrders'][jobOrderId]['job'] = newValue;
                    print('Successfully updated job order');
                    adminViewJobOrderOption(id);
                  }
                  break;
                case '2':
                  {
                    adminViewJobOrderOption(id);
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
          break;
        case '2':
          {
            print('Enter new value');
            String newValue = validateDateInput();
            print('Are you sure to place job order');
            print('[1] Yes');
            print('[2] No Back to previous menu');

            while (input == '') {
              input = stdin.readLineSync()!;
              switch (input) {
                case '1':
                  {
                    employeeList[id]['jobOrders'][jobOrderId]['jobDeadline'] =
                        newValue;
                    print('Successfully updated job order');
                    adminViewJobOrderOption(id);
                  }
                  break;
                case '2':
                  {
                    adminViewJobOrderOption(id);
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
          break;
        case '3':
          {
            print('Enter new value');
            String newValue = validateDateInput();
            print('Are you sure to place job order');
            print('[1] Yes');
            print('[2] No Back to previous menu');

            while (input == '') {
              input = stdin.readLineSync()!;
              switch (input) {
                case '1':
                  {
                    employeeList[id]['jobOrders'][jobOrderId]['jobClosedDate'] =
                        newValue;
                    print('Successfully updated job order');
                    adminViewJobOrderOption(id);
                  }
                  break;
                case '2':
                  {
                    adminViewJobOrderOption(id);
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
          break;
        case '4':
          {
            print('Enter new value');
            print('[1] Done');
            print('[2] In Progress');
            String newValue = '';
            while (newValue == '') {
              newValue = stdin.readLineSync()!;
              switch (newValue) {
                case '1':
                  {
                    newValue = 'Done';
                  }
                  break;
                case '2':
                  {
                    newValue = 'In Progress';
                  }
                  break;
                default:
                  {
                    print('Please enter a valid value');
                    newValue = '';
                  }
              }
            }

            print('Are you sure to place job order');
            print('[1] Yes');
            print('[2] No Back to previous menu');

            while (input == '') {
              input = stdin.readLineSync()!;
              switch (input) {
                case '1':
                  {
                    employeeList[id]['jobOrders'][jobOrderId]['status'] =
                        newValue;
                    print('Successfully updated job order');
                    adminViewJobOrderOption(id);
                  }
                  break;
                case '2':
                  {
                    adminViewJobOrderOption(id);
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
          break;
        case '5':
          {
            print('Enter new value');
            String newValue = validateStringInput();
            print('Are you sure to place job order');
            print('[1] Yes');
            print('[2] No Back to previous menu');

            while (input == '') {
              input = stdin.readLineSync()!;
              switch (input) {
                case '1':
                  {
                    employeeList[id]['jobOrders'][jobOrderId]['comment'] =
                        newValue;
                    print('Successfully updated job order');
                    adminViewJobOrderOption(id);
                  }
                  break;
                case '2':
                  {
                    adminViewJobOrderOption(id);
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
          break;

        default:
          {
            print('Please enter a valid value');
            editInput = '';
          }
      }
    }
  }

  void deleteJobOrder() {
    String input = '';
    int lastJobOrderId = 0;
    Map jobOrderMap = {};
    print('########## DELETE JOB ORDERS ##########\n');
    print('Enter Employee ID that you will update the job order');
    int id = 0;
    while (validateValidEmployeeId(id) == false) {
      id = validateIntInput();
      if (validateValidEmployeeId(id) == false) {
        print('Invalid Employee ID');
      }
    }
    jobOrderMap = allJobOrdersById(id);
    if (jobOrderMap.isEmpty) {
      print('No Records Found');
    } else {
      jobOrderMap.forEach((key, value) {
        if (key.runtimeType == int) {
          print('Employee Job Order Id: ${jobOrderMap[key]['jobOrderId']}');
          print('Employee Job: ${jobOrderMap[key]['job']}');
          print(
              'Employee Job Posted Date: ${jobOrderMap[key]['jobPostedDate']}');
          print('Employee Job Dead line: ${jobOrderMap[key]['jobDeadline']}');
          print(
              'Employee Job Closed Date: ${jobOrderMap[key]['jobClosedDate']}');
          print('Employee Status: ${jobOrderMap[key]['status']}');
          print('Employee Comment: ${jobOrderMap[key]['comment']}');
          print('');
          lastJobOrderId = jobOrderMap[key]['jobOrderId'];
        }
      });
    }
    int jobOrderId = 0;
    print('Enter the job order number you want to Delete');
    while (jobOrderId == 0) {
      jobOrderId = validateIntInput();
      if (jobOrderId <= 0 || jobOrderId > lastJobOrderId) {
        print('Invalid Job Order ID');
        jobOrderId = 0;
      }
    }
    print('Are you sure to want to Delete this job order');
    print('[1] Yes');
    print('[2] No Back to previous menu');

    while (input == '') {
      input = stdin.readLineSync()!;
      switch (input) {
        case '1':
          {
            employeeList[id]['jobOrders'].remove(jobOrderId);
            print('Successfully deleted the job order');
            adminViewJobOrderOption(id);
          }
          break;
        case '2':
          {
            adminViewJobOrderOption(id);
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
