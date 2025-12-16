// Class representing a vehicle
class Vehicle {
  String type;       // Type of vehicle (Car, Bike, Truck)
  String brand;      // Brand of vehicle
  String regNumber;  // Registration number
  double rentalPrice; // Rental price per day

  // Default constructor
  Vehicle(this.type, this.brand, this.regNumber, this.rentalPrice);

  // Named constructor for cars
  Vehicle.car(String brand, String regNumber)
      : type = 'Car',
        brand = brand,
        regNumber = regNumber,
        rentalPrice = 50.0; // default rental price for cars

  // Named constructor for bikes
  Vehicle.bike(String brand, String regNumber)
      : type = 'Bike',
        brand = brand,
        regNumber = regNumber,
        rentalPrice = 20.0; // default rental price for bikes

  // Method to display vehicle details
  void displayInfo() {
    print('Type: $type, Brand: $brand, Reg#: $regNumber, Price: \$${rentalPrice}');
  }
}

void main() {
  // Using default constructor
  var truck = Vehicle('Truck', 'Volvo', 'TRK123', 100.0);
  truck.displayInfo();

  // Using named constructor for car
  var car = Vehicle.car('Toyota', 'CAR456');
  car.displayInfo();

  // Using named constructor for bike
  var bike = Vehicle.bike('Honda', 'BIK789');
  bike.displayInfo();
}
