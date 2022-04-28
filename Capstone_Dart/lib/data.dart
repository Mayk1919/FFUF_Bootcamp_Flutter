Map<int, dynamic> employeeList = {
  0: {
    'employeeId': 0,
    'firstName': '',
    'lastName': '',
    'address': '',
    'gender': '',
    'mobileNumber': 0,
    'email': '',
    'birthday': '',
    'department': '',
    'password': '',
    'isAdmin': false,
    'isLoggedIn': false,
    'salaryRate': 0.0,
    'totalHoursWorked': 0.0,
    'workRecords':{},
    'totalLeaves': 0,
    'appliedLeaves': 0,
    'leaveStatus':{},
    'jobOrders': {},
  },
  1: {
    'employeeId': 1,
    'firstName': 'Juan',
    'lastName': 'Dela Cruz',
    'address': 'Quezon City, Philippines',
    'gender': 'Male',
    'mobileNumber': 09951234567,
    'email': 'juan@gmail.com',
    'birthday': '1990-12-25',
    'department': 'Electrical',
    'password': 'password1',
    'isAdmin': false,
    'isLoggedIn': false,
    'salaryRate': 20000.0,
    'totalHoursWorked': 40.0,
    'workRecords':{
      1:{
        'date':'2022-04-25',
        'start':'08:00',
        'end':'17:00'
      },
      2:{
        'date':'2022-04-26',
        'start':'08:00',
        'end':'17:00'
      },
      3:{
        'date':'2022-04-27',
        'start':'08:00',
        'end':'17:00'
      },
      4:{
        'date':'2022-04-28',
        'start':'08:00',
        'end':'17:00'
      },
      5:{
        'date':'2022-04-29',
        'start':'08:00',
        'end':'17:00'
      },
    },
    'totalLeaves': 14,
    'appliedLeaves': 1,
    'leaveStatus':{
      1:{
        'date':'2022-04-29',
        'forApproval': false,
        'isApprove': true,
        'reason': 'Vacation',
        'comment':'',
      },
      2:{
        'date':'2022-04-27',
        'forApproval': true,
        'isApprove': false,
        'reason': 'Vacation',
        'comment':'',
      },
    },
    'jobOrders': {
      1: {
        'jobOrderId':1,
        'job': 'Preventive Maintenance of Generator',
        'jobPostedDate': '2022-04-26',
        'jobDeadline': '2022-04-28',
        'jobClosedDate': '',
        'status': 'In Progress',
        'comment': ''
      },
      2: {
        'jobOrderId':2,
        'job': 'Preventive Maintenance of Compressor',
        'jobPostedDate': '2022-04-22',
        'jobDeadline': '2022-04-26',
        'jobClosedDate': '',
        'status': 'In Progress',
        'comment': ''
      },
    },
  },
  2: {
    'employeeId': 2,
    'firstName': 'Maria',
    'lastName': 'Clara',
    'address': 'Manila City, Philippines',
    'gender': 'Female',
    'mobileNumber': 09957894561,
    'email': 'maria@gmail.com',
    'birthday': '1991-01-01',
    'department': 'Accounting',
    'password': 'password2',
    'isAdmin': false,
    'isLoggedIn': false,
    'salaryRate': 25000.0,
    'totalHoursWorked': 43.0,
    'workRecords':{
      1:{
        'date':'2022-04-25',
        'start':'08:00',
        'end':'17:00'
      },
      2:{
        'date':'2022-04-26',
        'start':'08:00',
        'end':'19:00'
      },
      3:{
        'date':'2022-04-27',
        'start':'08:00',
        'end':'17:00'
      },
      4:{
        'date':'2022-04-28',
        'start':'08:00',
        'end':'17:00'
      },
      5:{
        'date':'2022-04-29',
        'start':'08:00',
        'end':'18:00'
      },
    },
    'totalLeaves': 14,
    'appliedLeaves': 1,
    'leaveStatus':{
      1:{
        'date':'2022-04-30',
        'forApproval': false,
        'isApprove': true,
        'reason': 'Vacation',
        'comment':'',
      },
      2:{
        'date':'2022-04-26',
        'forApproval': false,
        'isApprove': false,
        'reason': 'Vacation',
        'comment':'',
      },
    },
    'jobOrders': {
      1: {
        'jobOrderId':1,
        'job': 'Employee Salary',
        'jobPostedDate': '2022-04-26',
        'jobDeadline': '2022-04-30',
        'jobClosedDate': '',
        'status': 'In Progress',
        'comment': ''
      },
      2: {
        'jobOrderId':2,
        'job': 'Prepare monthly report',
        'jobPostedDate': '2022-04-22',
        'jobDeadline': '2022-04-30',
        'jobClosedDate': '',
        'status': 'In Progress',
        'comment': ''
      },
    },
  },
  3: {
    'employeeId': 3,
    'firstName': 'Ash',
    'lastName': 'Ketchum',
    'address': 'Pallet Town',
    'gender': 'Male',
    'mobileNumber': 09991234567,
    'email': 'ash@gmail.com',
    'birthday': '1988-12-31',
    'department': 'Administrative',
    'password': 'password',
    'isAdmin': true,
    'isLoggedIn': false,
    'salaryRate': 22000.0,
    'totalHoursWorked': 37.5,
    'workRecords':{
      1:{
        'date':'2022-04-25',
        'start':'09:00',
        'end':'17:00'
      },
      2:{
        'date':'2022-04-26',
        'start':'08:00',
        'end':'17:00'
      },
      3:{
        'date':'2022-04-27',
        'start':'08:00',
        'end':'17:00'
      },
      4:{
        'date':'2022-04-28',
        'start':'08:30',
        'end':'17:00'
      },
      5:{
        'date':'2022-04-29',
        'start':'09:00',
        'end':'17:00'
      },
    },
    'totalLeaves': 14,
    'appliedLeaves': 1,
    'leaveStatus':{
      1:{
        'date':'2022-04-30',
        'forApproval': false,
        'isApprove': true,
        'reason': 'Vacation',
        'comment':'',
      },
      2:{
        'date':'2022-04-26',
        'forApproval': true,
        'isApprove': false,
        'reason': 'Vacation',
        'comment':'',
      },
    },
    'jobOrders': {
      1: {
        'jobOrderId':1,
        'job': 'Update Employee jobs orders',
        'jobPostedDate': '2022-04-26',
        'jobDeadline': '2022-04-30',
        'jobClosedDate': '2022-04-27',
        'status': 'Done',
        'comment': 'Completed'
      },
      2: {
        'jobOrderId':2,
        'job': 'Prepare monthly report',
        'jobPostedDate': '2022-04-22',
        'jobDeadline': '2022-04-30',
        'jobClosedDate': '',
        'status': 'In Progress',
        'comment': ''
      },
    },
  },
};
