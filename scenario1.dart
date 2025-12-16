// Student class definition
class Student {
  // Attributes (properties)
  String name;        // Student's full name
  String regNumber;   // Registration number
  int age;            // Student's age
  String grade;       // Class/grade of the student

  // Constructor
  Student(this.name, this.regNumber, this.age, this.grade);

  // Method to display student details
  void displayInfo() {
    print("Name: $name");
    print("Registration Number: $regNumber");
    print("Age: $age");
    print("Grade: $grade");
  }

  // Method to check eligibility
  bool isAdult() {
    return age >= 18;
  }
}
void main() {
  // Creating student objects from the Student class
  Student student1 = Student("Mariki Godfrey", "BIT-D-2022-0001", 21, "BIT 3");
  Student student2 = Student("Asha Mwakalobo", "BIT-D-2023-0045", 17, "BIT 2");

  // Using object methods
  student1.displayInfo();
  print("Is Adult: ${student1.isAdult()}");

  print("---------------");

  student2.displayInfo();
  print("Is Adult: ${student2.isAdult()}");
}
