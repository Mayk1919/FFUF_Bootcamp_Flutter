class HomeRepair {
  final String jobName;
  final int materialCost;
  final int hoursWorked;
  final int hoursTravelled;
  static const int workRate = 35;
  static const int travelRate = 12;

  const HomeRepair({
    required this.jobName,
    required this.materialCost,
    required this.hoursWorked,
    required this.hoursTravelled,
  });

  int workCost({required hoursWorked}) => hoursWorked * workRate;

  int travelCost({required hoursTravelled}) => hoursTravelled * travelRate;

  @override
  String toString() =>
      'Repair made: $jobName with a total cost of \$${materialCost + workCost(hoursWorked: hoursWorked) + travelCost(hoursTravelled: hoursTravelled)}';
}

void main() {
  const homeRepair = HomeRepair(
    jobName: 'Kitchen Repair',
    materialCost: 100,
    hoursWorked: 40,
    hoursTravelled: 10,
  );

  print(homeRepair);
}
