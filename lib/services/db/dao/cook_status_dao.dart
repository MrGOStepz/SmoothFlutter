import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/cook_status_sql.dart';

class ClockStatusDAO implements CRUDRepository {
  @override
  Future<List<CookStatus>> getAll() async {
    var cookStatusList = <CookStatus>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(CookStatusSQL.sqlGetAllCookStatus);
      var cookStatus = CookStatus();
      for (var row in results) {
        cookStatus.id = row[0];
        cookStatus.name = row[1];
        cookStatusList.add(cookStatus);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return cookStatusList;
  }

  @override
  Future<bool?> add(param) async {
    var cookStatus = param as CookStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CookStatusSQL.sqlAddCookStatus, [cookStatus.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var cookStatus = param as CookStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CookStatusSQL.sqlDeleteCookStatus, [cookStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var cookStatus = param as CookStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CookStatusSQL.sqlDeleteCookStatus, [cookStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
