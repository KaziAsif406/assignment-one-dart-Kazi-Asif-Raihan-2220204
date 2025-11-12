// Question 5: Advanced Features & Mixins (Difficulty: 5/5)

// 1. Mixin Payable
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: ${amount.toStringAsFixed(1)}");
  }
}

// 2. Mixin Reportable
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();
}

// 4. Concrete Classes

// Manager Class
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;

  void displayInfo() {
    print(
        "Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary().toStringAsFixed(1)}");
  }
}

// Developer Class
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() => "Senior Developer";

  @override
  double getBaseSalary() => 6000.0;

  void displayInfo() {
    print(
        "Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary().toStringAsFixed(1)}");
  }
}

// 5. Demonstration
void main() {
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer1 = Developer("Alice Johnson", "D001", "IT", "Dart");
  Developer developer2 = Developer("Kazi Asif", "D002", "IT", "Python");

  List<Employee> employees = [manager, developer1, developer2];

  // Loop through all employees
  for (var employee in employees) {
    // Display info
    if (employee is Manager) {
      employee.displayInfo();
      double salary =
      employee.calculateSalary(employee.getBaseSalary(), 1000.0);
      print("Calculated Salary: ${salary.toStringAsFixed(1)}");
      employee.processPayment(salary);
      print("Report: ${employee.generateReport(employee.name, employee.department)}");
    } else if (employee is Developer) {
      employee.displayInfo();
      double salary =
      employee.calculateSalary(employee.getBaseSalary(), 500.0);
      print("Calculated Salary: ${salary.toStringAsFixed(1)}");
      employee.processPayment(salary);
    }

    print("");
  }
}

