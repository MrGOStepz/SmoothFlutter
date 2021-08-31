import 'package:smooth/models/orders/order_detail_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/order_detail_sql.dart';

class OrderDetailDAO implements CRUDRepository {
  @override
  Future<List<OrderDetail>> getAll() async {
    var orderDetailList = <OrderDetail>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(OrderDetailSQL.sqlGetAllOrderDetail);
      var orderDetail = OrderDetail();
      for (var row in results) {
        orderDetail.id = row[0];
        orderDetail.product.id = row[1];
        orderDetail.popupItem.id = row[2];
        orderDetail.order.id = row[3];
        orderDetail.quality = row[4];
        orderDetail.price = row[5];
        orderDetail.comment = row[6];
        orderDetail.cookStatus.id = row[7];
        orderDetailList.add(orderDetail);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return orderDetailList;
  }

  @override
  Future<bool?> add(param) async {
    var orderDetail = param as OrderDetail;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderDetailSQL.sqlAddOrderDetail, [orderDetail.product.id, orderDetail.product.id, orderDetail.order.id, orderDetail.quality, orderDetail.price, orderDetail.comment, orderDetail.cookStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var orderDetail = param as OrderDetail;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderDetailSQL.sqlDeleteOrderDetail, [orderDetail.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var orderDetail = param as OrderDetail;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(OrderDetailSQL.sqlUpdateOrderDetail, [orderDetail.product.id, orderDetail.product.id, orderDetail.order.id, orderDetail.quality, orderDetail.price, orderDetail.comment, orderDetail.cookStatus.id, orderDetail.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
