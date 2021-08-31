import 'package:smooth/models/orders/order_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/order_sql.dart';

class OrderDAO implements CRUDRepository {
  @override
  Future<List<Order>> getAll() async {
    var orderList = <Order>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(OrderSQL.sqlGetAllOrder);
      var order = Order();
      for (var row in results) {
        order.id = row[0];
        order.orderAt = row[1];
        order.orderType = row[2];
        order.staff.id = row[3];
        order.tableSection.id = row[4];
        order.orderStatus.id = row[5];
        order.payment.id = row[6];
        order.customer.id = row[7];
        orderList.add(order);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return orderList;
  }

  @override
  Future<bool?> add(param) async {
    var order = param as Order;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderSQL.sqlAddOrder, [order.orderAt, order.orderType, order.staff.id, order.tableSection.id, order.orderStatus.id, order.payment.id, order.customer.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var order = param as Order;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderSQL.sqlDeleteOrder, [order.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var order = param as Order;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderSQL.sqlUpdateOrder, [order.orderAt, order.orderType, order.staff.id, order.tableSection.id, order.orderStatus.id, order.payment.id, order.customer.id, order.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
