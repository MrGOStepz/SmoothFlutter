import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/models/tables/location_menu_model.dart';
import 'package:smooth/models/tables/location_mode_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/clock_status_sql.dart';
import 'package:smooth/services/db/sql/location_menu_sql.dart';
import 'package:smooth/services/db/sql/location_mode_sql.dart';

class LocationModeDAO implements CRUDRepository {
  @override
  Future<List<LocationMode>> getAll() async {
    var locationMenuList = <LocationMode>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(LocationModeSQL.sqlGetAllLocationMode);
      var locationMenu = LocationMode();
      for (var row in results) {
        locationMenu.id = row[0];
        locationMenu.name = row[1];
        locationMenu.order = row[2];
        locationMenu.isActive = row[3];
        locationMenuList.add(locationMenu);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return locationMenuList;
  }

  @override
  Future<bool?> add(param) async {
    var locationMenu = param as LocationMode;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationModeSQL.sqlAddLocationMode, [locationMenu.name, locationMenu.order, locationMenu.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var locationMenu = param as LocationMode;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationModeSQL.sqlDeleteLocationMode, [locationMenu.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var locationMenu = param as LocationMode;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationModeSQL.sqlUpdateLocationMode, [locationMenu.name, locationMenu.order, locationMenu.isActive, locationMenu.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
