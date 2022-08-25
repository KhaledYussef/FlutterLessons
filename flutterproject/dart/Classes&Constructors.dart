class Person {
  // Properties
  String? _firstName;
  String? lastName;
  DateTime? dateOfBirth;
  int? age;
  double? height;
  bool? isMarried;
  // Person(this.firstName, this.lastName);

  // String _getNameLength() => "400";

  @override
  String toString() => _fullName();

  String _fullName() => "$_firstName $lastName";
}

class Car {
  String? carName;
  String? carModel;
  int? issueYear;
  int? _carAge;

  Car(String carName, String carModel, int issueYear) {
    this._carAge = DateTime.now().year - issueYear;
    this.carName = carName;
    this.carModel = carModel;
    this.issueYear = issueYear;
  }

  int _getCarAge() => DateTime.now().year - issueYear!;
}

class Customer {
  String? firstName;
  String? lastName;

  Customer(String firstName, String _lastName) {
    this.firstName = firstName;
    this.lastName = _lastName;
  }
}

void main() {
  var programmer = new Person();
  programmer._firstName = "Khaled";
  programmer.lastName = "Yussef";
  // var car = new Car('BMW', 'S6', 2010);

  print(programmer._fullName());
  // print(programmer.getNameLength());
}
