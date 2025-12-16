// Parent class representing a general employee
class Employee {
  // Common attributes for all employees
  String name;
  int employeeId;
  double salary;

  // Constructor to initialize employee details
  Employee(this.name, this.employeeId, this.salary);

  // Common method for displaying employee details
  void displayInfo() {
    print("Name: $name");
    print("ID: $employeeId");
    print("Salary: $salary");
  }
}

// Child class: Manager inherits from Employee
class Manager extends Employee {
  // Additional attribute specific to Manager
  int teamSize;

  // Constructor calls the parent constructor using super
  Manager(String name, int employeeId, double salary, this.teamSize)
      : super(name, employeeId, salary);

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo(); // Call parent method
    print("Team Size: $teamSize");
  }
}

// Child class: Developer inherits from Employee
class Developer extends Employee {
  // Additional attribute specific to Developer
  String programmingLanguage;

  // Constructor calling parent constructor
  Developer(String name, int employeeId, double salary, this.programmingLanguage)
      : super(name, employeeId, salary);

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo(); // Call parent method
    print("Programming Language: $programmingLanguage");
  }
}

// Child class: Intern inherits from Employee
class Intern extends Employee {
  // Additional attribute specific to Intern
  int internshipDuration; // in months

  // Constructor calling parent constructor
  Intern(String name, int employeeId, double salary, this.internshipDuration)
      : super(name, employeeId, salary);

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo(); // Call parent method
    print("Internship Duration: $internshipDuration months");
  }
}

// Main function to test the inheritance
void main() {
  // Creating objects of different employee types
  Manager manager = Manager("Alice", 101, 80000, 10);
  Developer developer = Developer("Bob", 102, 60000, "Dart");
  Intern intern = Intern("Charlie", 103, 20000, 6);

  // Displaying information
  manager.displayInfo();
  print("---------------");
  developer.displayInfo();
  print("---------------");
  intern.displayInfo();
}
