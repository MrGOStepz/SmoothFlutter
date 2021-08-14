import 'package:smooth/model/person/person_model.dart';
import 'package:smooth/model/staff_position_model.dart';
import 'package:smooth/model/status/status_model.dart';

class Staff extends Person {
  var staffPosition = StaffPosition();
  var clockStatus = ClockStatus();
  late String password = "";
  Staff() : super(0, '', '', '', '');
  Staff.init(int id, String firstName, String lastName, String phoneNumber, String email) : super(id, firstName, lastName, phoneNumber, email);

  @override
  String toString() {
    return 'Staff{id: $id, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, dob: $dob, lastActive: $lastActive, isActive: $isActive staffPosition: $staffPosition, clockStatus: $clockStatus, password: $password}';
  }
}