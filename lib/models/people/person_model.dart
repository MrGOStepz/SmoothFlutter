abstract class Person {
  late int id;
  late String firstName;
  String? lastName;
  late String phoneNumber;
  String? email;
  DateTime? dob;
  late DateTime lastActive;
  int isActive = 1;

  Person(this.id, this.firstName, this.lastName, this.phoneNumber, this.email);

  @override
  String toString() {
    return 'Person{id: $id, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, dob: $dob, lastActive: $lastActive, isActive: $isActive}';
  }
}
