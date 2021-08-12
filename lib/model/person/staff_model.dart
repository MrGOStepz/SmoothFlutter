import 'package:smooth/model/person/person_model.dart';
import 'package:smooth/model/staff_position_model.dart';

class Staff extends Person {
  var staffPosition = StaffPosition();
  Staff() : super(0, '', '', '', '');
  Staff.init(int id, String firstName, String lastName, String phoneNumber, String email) : super(id, firstName, lastName, phoneNumber, email);
}