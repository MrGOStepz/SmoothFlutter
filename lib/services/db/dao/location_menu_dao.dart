import 'package:smooth/models/statuses/status_model.dart';
import 'package:smooth/models/tables/location_menu_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/clock_status_sql.dart';
import 'package:smooth/services/db/sql/location_menu_sql.dart';

class LocationMenuDAO implements CRUDRepository {
  @override
  Future<List<LocationMenu>> getAll() async {
    var locationMenuList = <LocationMenu>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(LocationMenuSQL.sqlGetAllLocationMenu);
      var locationMenu = LocationMenu();
      for (var row in results) {
        locationMenu.id = row[0];
        locationMenu.product.id = row[1];
        locationMenu.locationTab.id = row[2];
        locationMenu.columnNumber = row[3];
        locationMenu.rowNumber = row[4];
        locationMenu.isActive = row[5];
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
    var locationMenu = param as LocationMenu;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationMenuSQL.sqlAddLocationMenu, [locationMenu.product.id, locationMenu.locationTab.id, locationMenu.columnNumber, locationMenu.rowNumber, locationMenu.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var locationMenu = param as LocationMenu;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationMenuSQL.sqlDeleteLocationMenu, [locationMenu.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var locationMenu = param as LocationMenu;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationMenuSQL.sqlUpdateLocationMenu, [locationMenu.product.id, locationMenu.locationTab.id, locationMenu.columnNumber, locationMenu.rowNumber, locationMenu.isActive, locationMenu.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
