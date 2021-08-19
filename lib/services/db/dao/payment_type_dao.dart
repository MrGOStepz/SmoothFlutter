import 'package:smooth/models/types/payment_type_model.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/payment_type_sql.dart';
import 'package:smooth/services/db/crud_repository.dart';

class PaymentTypeDAO implements CRUDRepository {
  @override
  Future<bool?> add(param) async {
    PaymentType paymentType = param as PaymentType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PaymentTypeSQL.sqlAddPaymentType, [
        paymentType.id,
        paymentType.name
      ]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }

    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    PaymentType paymentType = param as PaymentType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PaymentTypeSQL.sqlDeletePaymentType, [paymentType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<List<PaymentType>> getAll() async {
    var paymentTypeList = <PaymentType>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(PaymentTypeSQL.sqlGetAllPaymentType);
      var paymentType = PaymentType();
      for (var row in results) {
        paymentType.id = row[0];
        paymentType.name = row[1];
        paymentTypeList.add(paymentType);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return paymentTypeList;
  }

  @override
  Future<bool?> update(param) async {
    PaymentType paymentType = param as PaymentType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PaymentTypeSQL.sqlDeletePaymentType, [paymentType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

}