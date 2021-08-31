import 'package:smooth/models/types/order_type_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/order_type_sql.dart';

class OrderTypeDAO implements CRUDRepository {
  @override
  Future<List<OrderType>> getAll() async {
    var orderTypeList = <OrderType>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(OrderTypeSQL.sqlGetAllOrderType);
      var orderType = OrderType();
      for (var row in results) {
        orderType.id = row[0];
        orderType.name = row[1];
        orderTypeList.add(orderType);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return orderTypeList;
  }

  @override
  Future<bool?> add(param) async {
    var orderType = param as OrderType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderTypeSQL.sqlAddOrderType, [orderType.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var orderType = param as OrderType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderTypeSQL.sqlDeleteOrderType, [orderType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var orderType = param as OrderType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderTypeSQL.sqlUpdateOrderType, [orderType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
