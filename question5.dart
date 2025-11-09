// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    double salary = baseSalary + bonus;
    print("Calculated total salary: \$${salary.toStringAsFixed(2)}");
    return salary; // Placeholder - replace with actual implementation
  }
  
  void processPayment(double amount) {
    print("Processing payment of \$${amount.toStringAsFixed(2)}...");
    print("Payment successful.\n");
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("Employee Info:");
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary().toStringAsFixed(2)}");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() {
    return "Manager";
  }
  
  @override
  double getBaseSalary() {
    return 8000.0;
  }
  
  @override
  void displayInfo() {
    print("Manager Info:");
    print("$name (ID: $id, Department: $department)");
    print("Team Size: $teamSize");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary().toStringAsFixed(2)}");
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle() {
    return "Senior Developer";
  }
  
  @override
  double getBaseSalary() {
    return 6000.0;
  }
  
  @override
  void displayInfo() {
    print("Developer Info:");
    print("$name (ID: $id, Department: $department)");
    print("Programming Language: $programmingLanguage");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary().toStringAsFixed(2)}");
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information

  Manager manager = Manager("Alice", "M101", "HR", 10);
  Developer dev1 = Developer("Bob", "D201", "IT", "Dart");
  Developer dev2 = Developer("Asif", "D202", "IT", "Python");
  
  // TODO: Create employees
  List<Employee> employees = [manager, dev1, dev2];

  for (var employee in employees){
    employee.displayInfo();
    print(".....................................................");

    double bonus = employee is Manager ? 500.0:300.0;
    double totolSalary = (employee as dynamic).calculateSalary(employee.getBaseSalary(), bonus);
    (employee as dynamic).processPayment(totolSalary);

    if (employee is Manager){
      print(employee.generateReport(employee.name, employee.department));
    }

    print("--------------------------------------------------------\n");
  }

  
  // TODO: Demonstrate salary calculation with bonus
  
  // TODO: Display employee information
  
}
