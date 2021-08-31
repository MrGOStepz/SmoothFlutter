import 'package:smooth/models/people/customer_model.dart';
import 'package:smooth/models/people/staff_model.dart';
import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/models/tables/table_model.dart';
import 'package:smooth/models/types/order_type_model.dart';
import 'package:smooth/models/types/payment_type_model.dart';

class Order {
  late int id;
  late DateTime orderAt;
  var orderType = OrderType();
  var staff = Staff();

  var tableSection = TableSection();
  var orderStatus = OrderStatus();
  var payment = PaymentType();
  var customer = Customer();
  int isActive = 1;
}
