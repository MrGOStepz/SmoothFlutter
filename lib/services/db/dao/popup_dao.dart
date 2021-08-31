import 'package:smooth/models/products/popup_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/popup_sql.dart';

class PopupDAO implements CRUDRepository {
  @override
  Future<List<Popup>> getAll() async {
    var popupList = <Popup>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(PopupSQL.sqlGetAllPopup);
      var popup = Popup();
      for (var row in results) {
        popup.id = row[0];
        popup.name = row[1];
        popup.isActive = row[2];
        popupList.add(popup);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return popupList;
  }

  @override
  Future<bool?> add(param) async {
    var popup = param as Popup;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PopupSQL.sqlAddPopup, [popup.name, popup.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var popup = param as Popup;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PopupSQL.sqlDeletePopup, [popup.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var popup = param as Popup;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(PopupSQL.sqlUpdatePopup, [popup.id, popup.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
