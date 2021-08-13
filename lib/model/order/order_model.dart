import 'package:smooth/model/person/customer_model.dart';
import 'package:smooth/model/person/staff_model.dart';
import 'package:smooth/model/status/status_model.dart';
import 'package:smooth/model/type/order_type_model.dart';
import 'package:smooth/model/type/payment_type_model.dart';

class Order {
  late int id;
  late DateTime orderAt;
  var orderType = OrderType();
  var staff = Staff();
  //TODO TableSection
  var orderStatus = OrderStatus();
  var payment = PaymentType();
  var customer = Customer();
  int isActive = 1;
}