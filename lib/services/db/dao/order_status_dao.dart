import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/order_status_sql.dart';

class OrderStatusDAO implements CRUDRepository {
  @override
  Future<List<OrderStatus>> getAll() async {
    var orderStatusList = <OrderStatus>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(OrderStatusSQL.sqlGetAllOrderStatus);
      var orderStatus = OrderStatus();
      for (var row in results) {
        orderStatus.id = row[0];
        orderStatus.name = row[1];
        orderStatusList.add(orderStatus);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return orderStatusList;
  }

  @override
  Future<bool?> add(param) async {
    var orderStatus = param as OrderStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderStatusSQL.sqlAddOrderStatus, [orderStatus.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var orderStatus = param as OrderStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderStatusSQL.sqlDeleteOrderStatus, [orderStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var orderStatus = param as OrderStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderStatusSQL.sqlUpdateOrderStatus, [orderStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
