abstract  class Person {
  late int id;
  late String firstName;
  String? lastName;
  late String phoneNumber;
  String? email;
  DateTime? dob;
  late DateTime lastActive;
  int isActive = 1;

  Person(this.id, this.firstName, this.lastName, this.phoneNumber, this.email);
}