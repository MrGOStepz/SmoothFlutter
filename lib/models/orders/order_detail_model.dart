import 'package:smooth/models/orders/order_model.dart';
import 'package:smooth/models/products/popup_model.dart';
import 'package:smooth/models/products/product_model.dart';
import 'package:smooth/models/statuses/status_model.dart';

class OrderDetail {
  late int id;
  var product = Product();
  var popupItem = PopupItem();
  var order = Order();
  var cookStatus = CookStatus();
  int quality = 0;
  double price = 0;
  String? comment;
  int isActive = 1;
}
