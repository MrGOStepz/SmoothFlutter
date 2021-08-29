import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/clock_status_sql.dart';

class ClockStatusDAO implements CRUDRepository {
  @override
  Future<List<ClockStatus>> getAll() async {
    var clockStatusList = <ClockStatus>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(ClockStatusSQL.sqlGetAllClockStatus);
      var clockStatus = ClockStatus();
      for (var row in results) {
        clockStatus.id = row[0];
        clockStatus.name = row[1];
        clockStatusList.add(clockStatus);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return clockStatusList;
  }

  @override
  Future<bool?> add(param) async {
    var clockStatus = param as ClockStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(ClockStatusSQL.sqlAddClockStatus, [clockStatus.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var clockStatus = param as ClockStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(ClockStatusSQL.sqlDeleteClockStatus, [clockStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var clockStatus = param as ClockStatus;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(ClockStatusSQL.sqlDeleteClockStatus, [clockStatus.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
