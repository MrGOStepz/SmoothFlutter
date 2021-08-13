import 'package:smooth/services/db/sql/table_name.dart';

class StaffSQL {
  static const String sqlGetAllStaff = "SELECT * FROM ${TableDB.tableStaff};";
  const String SQL_GET_STAFF_BY_ID = "SELECT * FROM $TABLE_STAFF WHERE $COL_STAFF_ID = ?;";
  const String SQL_GET_STAFF_BY_PASSWORD = "SELECT * FROM $TABLE_STAFF WHERE $COL_PASSWORD = ?;";
  const String SQL_GET_STAFF_BY_COLUMN = "SELECT ? FROM $TABLE_STAFF WHERE ? = ?";
  const String SQL_ADD_STAFF = "INSERT INTO $TABLE_STAFF ($COL_FIRST_NAME, $COL_LAST_NAME, $COL_PHONE, $COL_EMAIL, $COL_STAFF_POSITION_ID, $COL_CLOCK_STATUS_ID, $COL_PASSWORD, $COL_IS_ACTIVE) VALUE(?,?,?,?,?,?,?,?);";
  const String SQL_UPDATE_STAFF = "UPDATE $TABLE_STAFF SET($COL_FIRST_NAME = ?, $COL_LAST_NAME = ?, $COL_PHONE = ?, $COL_EMAIL = ?, $COL_STAFF_POSITION_ID = ?, $COL_CLOCK_STATUS_ID = ?, $COL_PASSWORD = ?, $COL_IS_ACTIVE = ?) WHERE $COL_STAFF_ID = ?;";
  const String SQL_DELETE_STAFF = "DELETE FROM $TABLE_STAFF WHERE $COL_STAFF_ID = ?;";


  static get tableStaff => null;}