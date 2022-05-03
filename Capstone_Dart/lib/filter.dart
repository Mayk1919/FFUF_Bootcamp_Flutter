import 'package:capstone_dart/data.dart';
import 'package:intl/intl.dart';

Map leaveFilterByMonth(int month, int year) {
  int leavebyMonth = 0;
  int leavebyYear = 0;
  String leave = DateFormat('MMMM').format(DateTime(0, month));
  Map leaveMap = {
    'filterByName': false,
    'filterByMonth': true,
    'month': DateFormat('MMMM').format(DateTime(0, month)),
    'year': year,
  };
  int leaveCount = 0;

  employeeList.forEach((key, value) {
    employeeList[key]['leaveStatus'].forEach((key2, value2) {
      leavebyMonth =
          DateTime.parse(employeeList[key]['leaveStatus'][key2]['date']).month;
      leavebyYear =
          DateTime.parse(employeeList[key]['leaveStatus'][key2]['date']).year;
      if (leavebyMonth == month && leavebyYear == year) {
        leaveCount += 1;
        leaveMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'requestId': key2,
          'date': employeeList[key]['leaveStatus'][key2]['date'],
          'reason': employeeList[key]['leaveStatus'][key2]['reason'],
        };
      }
    });
  });
  return leaveMap;
}

Map leaveFilterByYear(int year) {
  int leavebyyear = 0;
  Map leaveMap = {
    'filterByMonth': false,
    'filterByYear': true,
    'filterByName': false,
    'year': year,
  };
  int leaveCount = 0;

  employeeList.forEach((key, value) {
    employeeList[key]['leaveStatus'].forEach((key2, value2) {
      leavebyyear =
          DateTime.parse(employeeList[key]['leaveStatus'][key2]['date']).year;
      if (leavebyyear == year) {
        leaveCount += 1;
        leaveMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'requestId': key2,
          'date': employeeList[key]['leaveStatus'][key2]['date'],
          'reason': employeeList[key]['leaveStatus'][key2]['reason'],
        };
      }
    });
  });
  return leaveMap;
}

Map leaveFilterByName(String lastName, String firstName) {
  Map leaveMap = {
    'filterByName': true,
    'firstName': firstName,
    'lastName': lastName,
  };
  int leaveCount = 0;

  employeeList.forEach((key, value) {
    if (employeeList[key]['lastName'].toString().toUpperCase() ==
            lastName.toUpperCase() &&
        employeeList[key]['firstName'].toString().toUpperCase() ==
            firstName.toUpperCase()) {
      employeeList[key]['leaveStatus'].forEach((key2, value2) {
        leaveCount += 1;
        leaveMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'requestId': key2,
          'date': employeeList[key]['leaveStatus'][key2]['date'],
          'reason': employeeList[key]['leaveStatus'][key2]['reason'],
        };
      });
    }
  });
  return leaveMap;
}

Map leaveFilterById(int id) {
  Map leaveMap = {
    'filterByName': false,
    'filterById': true,
    'employeeId': id,
  };
  int leaveCount = 0;

  employeeList.forEach((key, value) {
    if (employeeList[key]['employeeId'] == id) {
      employeeList[key]['leaveStatus'].forEach((key2, value2) {
        leaveCount += 1;
        leaveMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'requestId': key2,
          'date': employeeList[key]['leaveStatus'][key2]['date'],
          'reason': employeeList[key]['leaveStatus'][key2]['reason'],
        };
      });
    }
  });
  return leaveMap;
}

Map leaveFilterByApproval(int approval) {
  Map leaveMap = {
    'filterByName': false,
    'filterById': false,
    'filterByApproval': true,
    'isLeaveApprove': approval == 2
  };
  int leaveCount = 0;

  employeeList.forEach((key, value) {
    employeeList[key]['leaveStatus'].forEach((key2, value2) {
      if (approval == 2) {
        if (employeeList[key]['leaveStatus'][key2]['forApproval'] == false &&
            employeeList[key]['leaveStatus'][key2]['isApprove'] == true) {
          leaveCount += 1;
          leaveMap[leaveCount] = {
            'employeeId': employeeList[key]['employeeId'],
            'firstName': employeeList[key]['firstName'],
            'lastName': employeeList[key]['lastName'],
            'department': employeeList[key]['department'],
            'requestId': key2,
            'date': employeeList[key]['leaveStatus'][key2]['date'],
            'reason': employeeList[key]['leaveStatus'][key2]['reason'],
          };
        }
      } else {
        if (employeeList[key]['leaveStatus'][key2]['forApproval'] == false &&
            employeeList[key]['leaveStatus'][key2]['isApprove'] == false) {
          leaveCount += 1;
          leaveMap[leaveCount] = {
            'employeeId': employeeList[key]['employeeId'],
            'firstName': employeeList[key]['firstName'],
            'lastName': employeeList[key]['lastName'],
            'department': employeeList[key]['department'],
            'requestId': key2,
            'date': employeeList[key]['leaveStatus'][key2]['date'],
            'reason': employeeList[key]['leaveStatus'][key2]['reason'],
          };
        }
      }
    });
  });
  return leaveMap;
}

Map searchEmployeeByName({String? firstName, String? lastName, int? id}) {
  Map employeeMap = {
    'searchedName': firstName ?? lastName ?? ' ',
    'searchedId': id ?? false,
    'searchAll': false,
    'filterByFirstName': firstName != null,
    'filterByLastName': lastName != null,
    'filterById': id != null,
  };
  int leaveCount = 0;
  employeeList.forEach((key, value) {
    if (employeeList[key]['firstName'].toString().toUpperCase() ==
            employeeMap['searchedName'].toUpperCase() ||
        employeeList[key]['lastName'].toString().toUpperCase() ==
            employeeMap['searchedName'].toUpperCase() ||
        employeeList[key]['employeeId'] == employeeMap['searchedId']) {
      leaveCount += 1;
      employeeMap[leaveCount] = employeeList[key];
    }
  });
  return employeeMap;
}

int findEmployeeId(String email) {
  int input = 0;
  employeeList.forEach((key, value) {
    if (employeeList[key]['email'] == email) {
      input = employeeList[key]['employeeId'];
    }
  });
  return input;
}

int employeeCountJobInProgress(int id) {
  int count = 0;
  employeeList[id]['jobOrders'].forEach((key, value) {
    if (employeeList[id]['jobOrders'][key]['status'] == 'In Progress') {
      count += 1;
    }
    ;
  });

  return count;
}

Map allJobOrders() {
  Map jobOrderMap = {
    'all': true,
  };
  int leaveCount = 0;
  employeeList.forEach((key, value) {
    employeeList[key]['jobOrders'].forEach((key2, value2) {
      leaveCount += 1;
      jobOrderMap[leaveCount] = {
        'employeeId': employeeList[key]['employeeId'],
        'firstName': employeeList[key]['firstName'],
        'lastName': employeeList[key]['lastName'],
        'department': employeeList[key]['department'],
        'jobOrderId': key2,
        'job': employeeList[key]['jobOrders'][key2]['job'],
        'jobPostedDate': employeeList[key]['jobOrders'][key2]['jobPostedDate'],
        'jobDeadline': employeeList[key]['jobOrders'][key2]['jobDeadline'],
        'jobClosedDate': employeeList[key]['jobOrders'][key2]['jobClosedDate'],
        'status': employeeList[key]['jobOrders'][key2]['status'],
        'comment': employeeList[key]['jobOrders'][key2]['comment'],
      };
    });
  });
  return jobOrderMap;
}

Map allJobOrdersInProgress() {
  Map jobOrderMap = {
    'all': false,
    'inProgress': true,
  };
  int leaveCount = 0;
  employeeList.forEach((key, value) {
    employeeList[key]['jobOrders'].forEach((key2, value2) {
      if (employeeList[key]['jobOrders'][key2]['status'] == 'In Progress') {
        leaveCount += 1;
        jobOrderMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'jobOrderId': key2,
          'job': employeeList[key]['jobOrders'][key2]['job'],
          'jobPostedDate': employeeList[key]['jobOrders'][key2]
              ['jobPostedDate'],
          'jobDeadline': employeeList[key]['jobOrders'][key2]['jobDeadline'],
          'jobClosedDate': employeeList[key]['jobOrders'][key2]
              ['jobClosedDate'],
          'status': employeeList[key]['jobOrders'][key2]['status'],
          'comment': employeeList[key]['jobOrders'][key2]['comment'],
        };
      }
    });
  });
  return jobOrderMap;
}

Map allJobOrdersCompleted() {
  Map jobOrderMap = {
    'all': false,
    'inProgress': false,
    'completed': true,
  };
  int leaveCount = 0;
  employeeList.forEach((key, value) {
    employeeList[key]['jobOrders'].forEach((key2, value2) {
      if (employeeList[key]['jobOrders'][key2]['status'] == 'Done') {
        leaveCount += 1;
        jobOrderMap[leaveCount] = {
          'employeeId': employeeList[key]['employeeId'],
          'firstName': employeeList[key]['firstName'],
          'lastName': employeeList[key]['lastName'],
          'department': employeeList[key]['department'],
          'jobOrderId': key2,
          'job': employeeList[key]['jobOrders'][key2]['job'],
          'jobPostedDate': employeeList[key]['jobOrders'][key2]
              ['jobPostedDate'],
          'jobDeadline': employeeList[key]['jobOrders'][key2]['jobDeadline'],
          'jobClosedDate': employeeList[key]['jobOrders'][key2]
              ['jobClosedDate'],
          'status': employeeList[key]['jobOrders'][key2]['status'],
          'comment': employeeList[key]['jobOrders'][key2]['comment'],
        };
      }
    });
  });
  return jobOrderMap;
}

Map allJobOrdersById(int id) {
  Map jobOrderMap = {
    'all': false,
    'inProgress': false,
    'completed': false,
    'byId': true
  };
  int leaveCount = 0;

  employeeList[id]['jobOrders'].forEach((key2, value2) {
    leaveCount += 1;
    jobOrderMap[leaveCount] = {
      'employeeId': employeeList[id]['employeeId'],
      'firstName': employeeList[id]['firstName'],
      'lastName': employeeList[id]['lastName'],
      'department': employeeList[id]['department'],
      'jobOrderId': key2,
      'job': employeeList[id]['jobOrders'][key2]['job'],
      'jobPostedDate': employeeList[id]['jobOrders'][key2]['jobPostedDate'],
      'jobDeadline': employeeList[id]['jobOrders'][key2]['jobDeadline'],
      'jobClosedDate': employeeList[id]['jobOrders'][key2]['jobClosedDate'],
      'status': employeeList[id]['jobOrders'][key2]['status'],
      'comment': employeeList[id]['jobOrders'][key2]['comment'],
    };
  });

  return jobOrderMap;
}
