import 'package:capstone_dart/data.dart';
import 'package:capstone_dart/options.dart';
import 'package:capstone_dart/employee.dart';
import 'package:capstone_dart/filter.dart';
late Employee employee;
void displayProfile(int id) {
  Map<String,dynamic> employeeProfile = employeeList[id];

   employee = Employee(
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
  print(
      '########## WELCOME TO YOUR DASHBOARD ${employee.firstName.toString().toUpperCase()} ##########');
  print('');
  print('Employee ID: ${employee.employeeId}');
  print('First Name: ${employee.firstName}');
  print('Last Name: ${employee.lastName}');
  print('Gender: ${employee.gender}');
  print('Address: ${employee.address}');
  print('Mobile Number: ${employee.mobileNumber}');
  print('Email: ${employee.email}');
  print('Birthday: ${employee.birthday}');
  print('Department: ${employee.department}');
  print('Salary: ${employee.salaryRate}');
  print('Available Leaves: ${employee.totalLeaves}');
  print('Total Work Hours: ${employee.totalHoursWorked}');
  print('Job Orders in Progress: ${employeeCountJobInProgress(employee.employeeId)}');

   dashboardOption(id);
}


void main(){
  displayProfile(3);
}