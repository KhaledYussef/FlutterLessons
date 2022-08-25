//------------------ Class Without Constructor -----------------------------------------------------
class Person {
  // This is Property
  String? firstName;
  String? lastName;

  // This is Method
  String fullName() => "$firstName $lastName";
}

//------------------ Class With Constructor V1 -----------------------------------------------------
class Car {
  // This is Property
  String carName;
  String carModel;
  int Speed;
  int issueDate;

  // This is Constructor
  Car({
    required this.carName,
    required this.carModel,
    required this.Speed,
    required this.issueDate,
  });

  // This is Method
  int getCarAge() => DateTime.now().year - issueDate;
}

//------------------ Class With Constructor V2 -----------------------------------------------------
class Customer {
  String? name;
  int? age;
  String? location;
  // constructor
  Customer(String name, int age, String location) {
    this.name = name;
    this.age = age;
    this.location = location;
  }
}

//------------------ Class With Constructor V3 -----------------------------------------------------
class Agent {
  String name;
  int age;
  String location;

  // Constructor
  Agent(this.name, this.age, this.location);
}

//------------------ Class With Constructor V4 MULTI CONSTRUCTOR -----------------------------------------------------
class Client {
  String? name;
  int? age;
  String? location;

  Client(String name, int age, String location) {
    this.name = name;
    this.age = age;
    this.location = location;
  }
  // Named constructor - for multiple constructors
  Client.withoutLocation(this.name, this.age) {
    this.name = name;
    this.age = age;
  }
  Client.empty() {
    name = "";
    age = 0;
    location = "";
  }

  @override
  String toString() {
    return "Customer [name=${this.name},age=${this.age},location=${this.location}]";
  }
}

//------------------------------------------------------------------------
void main() {
  Person programmer = new Person();
  programmer.firstName = "Khalid";
  programmer.lastName = "Yussef";
  print(programmer.fullName());
}
