// Base class representing a generic Shape
abstract class Shape {
  // Abstract method for calculating area
  double area();
}

// Circle class inherits from Shape
class Circle extends Shape {
  double radius; // Attribute specific to Circle

  // Constructor to initialize radius
  Circle(this.radius);

  // Override area() to provide Circle-specific calculation
  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

// Rectangle class inherits from Shape
class Rectangle extends Shape {
  double width;  // Width of rectangle
  double height; // Height of rectangle

  // Constructor to initialize width and height
  Rectangle(this.width, this.height);

  // Override area() to provide Rectangle-specific calculation
  @override
  double area() {
    return width * height;
  }
}

// Triangle class inherits from Shape
class Triangle extends Shape {
  double base;   // Base of triangle
  double height; // Height of triangle

  // Constructor to initialize base and height
  Triangle(this.base, this.height);

  // Override area() to provide Triangle-specific calculation
  @override
  double area() {
    return 0.5 * base * height;
  }
}

void main() {
  // Create a list of shapes using polymorphism
  List<Shape> shapes = [
    Circle(5),
    Rectangle(4, 6),
    Triangle(3, 7)
  ];

  // Loop through each shape and calculate area
  for (var shape in shapes) {
    print('Area: ${shape.area()}'); // Polymorphic call
  }
}
