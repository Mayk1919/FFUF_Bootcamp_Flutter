import 'dart:io';

class Person {
  late String firstName;
  late String lastName;
  late String address;
  late int zipCode;
  late int phoneNumber;

  Person({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.zipCode,
    required this.phoneNumber,
  });

  void setFirstName(String firstName) => firstName = firstName;

  void setLastName(String lastName) => lastName = lastName;

  void setAddress(String address) => address = address;

  void setZipCode(String zipCode) => zipCode = zipCode;

  void setPhoneNumber(String phoneNumber) => phoneNumber = phoneNumber;

  @override
  String toString() =>
      'Information\nFirst Name: $firstName\nLast Name: $lastName\nAddress: $address\nZip Code: $zipCode\nPhone Number: $phoneNumber';
}

class CollegeEmployee extends Person {
  late int socialSecurityNumber;
  late double annualSalary;
  late String department;

  CollegeEmployee({
    required String firstName,
    required String lastName,
    required String address,
    required int zipCode,
    required int phoneNumber,
    required this.socialSecurityNumber,
    required this.annualSalary,
    required this.department,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          address: address,
          zipCode: zipCode,
          phoneNumber: phoneNumber,
        );

  void setSocialSecurityNumber(int socialSecurityNumber) =>
      socialSecurityNumber = socialSecurityNumber;

  void setAnnualSalary(double annualSalary) => annualSalary = annualSalary;

  void setDepartment(String department) => department = department;

  @override
  String toString() =>
      'Information\nFirst Name: $firstName\nLast Name: $lastName\nAddress: $address\nZip Code: $zipCode\nPhone Number: $phoneNumber\nSocial Security Number: $socialSecurityNumber\nAnnual Salary: $annualSalary\nDepartment: $department';
}

class Faculty extends CollegeEmployee {
  late bool isTenured;

  Faculty({
    required String firstName,
    required String lastName,
    required String address,
    required int zipCode,
    required int phoneNumber,
    required int socialSecurityNumber,
    required double annualSalary,
    required String department,
    required this.isTenured,
  }) : super(
            firstName: firstName,
            lastName: lastName,
            address: address,
            zipCode: zipCode,
            phoneNumber: phoneNumber,
            socialSecurityNumber: socialSecurityNumber,
            annualSalary: annualSalary,
            department: department);

  void setIsTenured(bool isTenured) => isTenured = isTenured;

  @override
  String toString() =>
      'Information\nFirst Name: $firstName\nLast Name: $lastName\nAddress: $address\nZip Code: $zipCode\nPhone Number: $phoneNumber\nSocial Security Number: $socialSecurityNumber\nAnnual Salary: $annualSalary\nDepartment: $department\nIs Tenured: $isTenured\n';
}

class Student extends Person {
  late String majorStudy;
  late double averageGrade;

  Student({
    required String firstName,
    required String lastName,
    required String address,
    required int zipCode,
    required int phoneNumber,
    required String majorStudy,
    required double averageGrade,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          address: address,
          zipCode: zipCode,
          phoneNumber: phoneNumber,
        );

  void setMajorStudy(String majorStudy) => majorStudy = majorStudy;

  void setAverageGrade(double averageGrade) => averageGrade = averageGrade;

  @override
  String toString() =>
      'Information\nFirst Name: $firstName\nLast Name: $lastName\nAddress: $address\nZip Code: $zipCode\nPhone Number: $phoneNumber\nMajor Study: $majorStudy\nAverage Grade: $averageGrade\n';
}

void main() {
  List<CollegeEmployee> regularCollegeEmployeesList = [];
  List<Faculty> facultyList = [];
  List<Student> studentList = [];
  String? inputValue;

  checkInput(value) {
    while (value != 'C' && value != 'F' && value != 'S' && value != 'Q') {
      print('Please enter the correct value (C,F or S) or quit (Q)');
      value = stdin.readLineSync();
      if (value == 'Q') {
        print('exit');
        exit(0);
      }
    }
    return inputValue = value;
  }

  addData(value) {
    switch (value)
    {
      case 'C':
        {
          Map<String, dynamic> collegeInputs = {
            'firstName': '',
            'lastName': '',
            'address': '',
            'zipCode': 0,
            'phoneNumber': 0,
            'socialSecurityNumber': 0,
            'annualSalary': 0.0,
            'department': '',
          };

          collegeInputs.forEach((key, value) {
            while (collegeInputs[key] == '' ||
                collegeInputs[key] == 0 ||
                collegeInputs[key] == 0.0) {
              if (collegeInputs[key].runtimeType == int) {
                print('Please enter ${key}');
                collegeInputs[key] = int.tryParse(stdin.readLineSync()!);
                while (collegeInputs[key].runtimeType != int) {
                  print('Please enter a correct value for ${key}');
                  collegeInputs[key] = int.tryParse(stdin.readLineSync()!);
                }
              } else if (collegeInputs[key].runtimeType == double) {
                print('Please enter ${key}');
                collegeInputs[key] = double.tryParse(stdin.readLineSync()!);
                while (collegeInputs[key].runtimeType != double) {
                  print('Please enter a correct value for ${key}');
                  collegeInputs[key] = double.tryParse(stdin.readLineSync()!);
                }
              } else {
                print('Please enter ${key}');
                collegeInputs[key] = stdin.readLineSync()!;
              }
            }
          });

          regularCollegeEmployeesList.add(CollegeEmployee(
            firstName: collegeInputs['firstName'],
            lastName: collegeInputs['lastName'],
            address: collegeInputs['address'],
            zipCode: collegeInputs['zipCode'],
            phoneNumber: collegeInputs['phoneNumber'],
            socialSecurityNumber: collegeInputs['socialSecurityNumber'],
            annualSalary: collegeInputs['annualSalary'],
            department: collegeInputs['department'],
          ));
        }
        print(regularCollegeEmployeesList);
        break;
      case 'F':{

        Map<String, dynamic> facultyInputs = {
          'firstName': '',
          'lastName': '',
          'address': '',
          'zipCode': 0,
          'phoneNumber': 0,
          'socialSecurityNumber': 0,
          'annualSalary': 0.0,
          'department': '',
          'isTenured':'true',
        };

        facultyInputs.forEach((key, value) {
          while (facultyInputs[key] == '' ||
              facultyInputs[key] == 0 ||
              facultyInputs[key] == 0.0 ||
              facultyInputs[key] == 'true') {
            if (facultyInputs[key].runtimeType == int) {
              print('Please enter ${key}');
              facultyInputs[key] = int.tryParse(stdin.readLineSync()!);
              while (facultyInputs[key].runtimeType != int) {
                print('Please enter a correct value for ${key}');
                facultyInputs[key] = int.tryParse(stdin.readLineSync()!);
              }
            } else if (facultyInputs[key].runtimeType == double) {
              print('Please enter ${key}');
              facultyInputs[key] = double.tryParse(stdin.readLineSync()!);
              while (facultyInputs[key].runtimeType != double) {
                print('Please enter a correct value for ${key}');
                facultyInputs[key] = double.tryParse(stdin.readLineSync()!);
              }
            }
            else if (facultyInputs[key] == 'true') {

              print('Please enter ${key} (true/false)');
              facultyInputs[key] = (stdin.readLineSync()!).toLowerCase();
              if(facultyInputs[key] == 'true'){
                facultyInputs[key] = true;
              }
              else if(facultyInputs[key] == 'false'){
                facultyInputs[key] = false;
              }
              while (facultyInputs[key].runtimeType != bool) {
                print('Please enter a correct value for ${key} (true/false)');
                facultyInputs[key] = (stdin.readLineSync()!).toLowerCase();
                if(facultyInputs[key] == 'true'){
                  facultyInputs[key] = true;
                }
                else if(facultyInputs[key] == 'false'){
                  facultyInputs[key] = false;
                }
              }
              print(facultyInputs[key].runtimeType);
            }else {
              print('Please enter ${key}');
              facultyInputs[key] = stdin.readLineSync()!;
            }
          }
        });

        facultyList.add(Faculty(
          firstName: facultyInputs['firstName'],
          lastName: facultyInputs['lastName'],
          address: facultyInputs['address'],
          zipCode: facultyInputs['zipCode'],
          phoneNumber: facultyInputs['phoneNumber'],
          socialSecurityNumber: facultyInputs['socialSecurityNumber'],
          annualSalary: facultyInputs['annualSalary'],
          department: facultyInputs['department'],
          isTenured: facultyInputs['isTenured'],
        ));

      }
    print(facultyList);
      break;
    }

  }




  print(
      'Please select the data that you want to enter (C,F or S) or quit (Q): ');

  inputValue = stdin.readLineSync();
  checkInput(inputValue);
  addData(inputValue);

  print(inputValue);
}
