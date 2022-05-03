import 'package:capstone_dart/admin.dart';
import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/employeeRecord.dart';

late Admin admin;

void adminDisplay(int id) {
  Map<String, dynamic> employeeProfile = employeeList[id];

  admin = Admin(
    employeeId: employeeProfile['employeeId'],
    firstName: employeeProfile['firstName'],
    lastName: employeeProfile['lastName'],
    address: employeeProfile['address'],
    gender: employeeProfile['gender'],
    mobileNumber: employeeProfile['mobileNumber'],
    email: employeeProfile['email'],
    birthday: employeeProfile['birthday'],
    department: employeeProfile['department'],
    password: employeeProfile['password'],
    isAdmin: employeeProfile['isAdmin'],
    isLoggedIn: employeeProfile['isLoggedIn'],
    salaryRate: employeeProfile['salaryRate'],
    totalHoursWorked: employeeProfile['totalHoursWorked'],
    workRecords: employeeProfile['workRecords'],
    totalLeaves: employeeProfile['totalLeaves'],
    appliedLeaves: employeeProfile['appliedLeaves'],
    leaveStatus: employeeProfile['leaveStatus'],
    jobOrders: employeeProfile['jobOrders'],
  );

  int leavesForApproval = admin.leavesForApprovalCount();
  int jobsInProgress = admin.allJobInProgressCount();
  int employeeCounter = employeeCount();

  print(
      '########## WELCOME TO ADMIN DASHBOARD ${admin.firstName.toString().toUpperCase()} ##########');
  print('');
  print('Employee ID: ${admin.employeeId}');
  print('First Name: ${admin.firstName}');
  print('Last Name: ${admin.lastName}');
  print('');
  print('Total number of employees: $employeeCounter');
  print('Number of leaves for approval: $leavesForApproval');
  print('Number of job orders in progress: $jobsInProgress');

  adminDashboardOption(id);
}
