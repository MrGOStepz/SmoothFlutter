import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class PopupSQL {
  static const String sqlGetAllPopup = "SELECT * FROM ${TableDB.tablePopup}";
  static const String sqlAddPopup = "INSERT INTO ${TableDB.tablePopup} (${ColumnDB.colPopupName}, ${ColumnDB.colIsActive}) VALUE(?,?)";
  static const String sqlUpdatePopup = "UPDATE ${TableDB.tablePopup} SET ${ColumnDB.colPopupName}, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colPopupId} = ?";
  static const String sqlDeletePopup = "DELETE FROM ${TableDB.tablePopup} WHERE ${ColumnDB.colPopupId} = ?";
}

