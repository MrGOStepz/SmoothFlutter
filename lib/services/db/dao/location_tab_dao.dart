import 'package:smooth/models/tables/location_tab_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/location_tab_sql.dart';

class LocationTabDAO implements CRUDRepository {
  @override
  Future<List<LocationTab>> getAll() async {
    var locationLabList = <LocationTab>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(LocationTabSQL.sqlGetAllLocationTab);
      var locationLab = LocationTab();
      for (var row in results) {
        locationLab.id = row[0];
        locationLab.name = row[1];
        locationLab.locationOrder = row[2];
        locationLab.locationMode.id = row[3];
        locationLab.isActive = row[4];
        locationLabList.add(locationLab);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return locationLabList;
  }

  @override
  Future<bool?> add(param) async {
    var locationLab = param as LocationTab;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationTabSQL.sqlAddLocationTab, [locationLab.name, locationLab.locationOrder, locationLab.locationMode.id, locationLab.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var locationLab = param as LocationTab;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationTabSQL.sqlDeleteLocationTab, [locationLab.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var locationLab = param as LocationTab;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(LocationTabSQL.sqlUpdateLocationTab, [locationLab.name, locationLab.locationOrder, locationLab.isActive, locationLab.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
