enum GenderType { Male, Female }

class Person {
  // Properties
  static String? firstName = "";
  String? lastName;
}

void main() {
  var abd = new Person();
  Person.firstName = "abd";

  var sami = new Person();
  // sami.firstName = "sami";

  print(Person.firstName);
}
