import 'package:smooth/model/person/person_model.dart';

class Customer extends Person {
  String? address;
  int totalOrder = 0;

  Customer() : super(0, '', '', '', '');
  Customer.init(int id, firstName,String lastName, String phoneNumber, String email, this.address) : super(id, firstName, lastName, phoneNumber, email);
}