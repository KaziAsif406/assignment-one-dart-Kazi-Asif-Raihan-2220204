// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐

// 1. Abstract Class Vehicle:
//    - Properties: String brand, String model, int year
//    - Abstract method: void start()
//    - Abstract method: void stop()
//    - Concrete method: void displayInfo()
abstract class Vehicle {
  String brand;
  String model;
  int year;
  
  Vehicle(this.brand, this.model, this.year);
  
  // Abstract methods
  void start();
  void stop();
  
  // Concrete method
  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }
  
  // Calculate vehicle age (current year - vehicle year)
  int calculateAge() {
    var age = DateTime.now().year - year;
    return age;
  }
}

// 2. Concrete Classes:
//    - Car extends Vehicle
//      - Additional property: int numberOfDoors
//      - Override start() and stop() methods
class Car extends Vehicle {
  int numberOfDoors;
  
  Car(String brand, String model, int year, this.numberOfDoors) : super(brand, model, year);
  
  @override
  void start() {
    print("Starting the car engine of $brand $model...");
  }
  
  @override
  void stop() {
    print("Stopping the car engine of $brand $model...");
  }
  
  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

//    - Motorcycle extends Vehicle
//      - Additional property: bool hasWindshield
//      - Override start() and stop() methods
class Motorcycle extends Vehicle {
  bool hasWindshield;
  
  Motorcycle(String brand, String model, int year, this.hasWindshield) : super(brand, model, year);
  
  @override
  void start() {
    print("Starting the motorcycle engine of $brand $model...");
  }
  
  @override
  void stop() {
    print("Stopping the motorcycle engine of $brand $model...");
  }
  
  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Car("BMW", "M", 2021, 4),
    Motorcycle("Honda", "CBR", 2021, true),
    Motorcycle("Yamaha", "FZ-S", 2018, false),
  ];

  for (Vehicle vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print("Age of ${vehicle.brand} ${vehicle.model} : ${vehicle.calculateAge()} years");
    print(".............................................................");
  }
}
