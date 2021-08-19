import 'package:smooth/models/people/staff_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/staff_sql.dart';

class StaffDAO implements CRUDRepository {
  @override
  Future<List<Staff>> getAll() async {
    var staffList = <Staff>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(StaffSQL.sqlGetAllStaff);
      var staff = Staff();
      for (var row in results) {
        staff.id = row[0];
        staff.firstName = row[1];
        staff.lastName = row[2];
        staff.phoneNumber = row[3];
        staff.email = row[4];
        staff.staffPosition.id = row[5];
        staff.clockStatus.id = row[6];
        staff.password = row[7].toString();
        staff.isActive = row[8];
        staffList.add(staff);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return staffList;
  }

  @override
  Future<bool?> add(param) async {
    Staff staff = param as Staff;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(StaffSQL.sqlAddStaff, [staff.firstName, staff.lastName, staff.phoneNumber, staff.email, staff.staffPosition.id, staff.clockStatus.id, staff.password, staff.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    Staff staff = param as Staff;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(StaffSQL.sqlDeleteStaff, [staff.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    Staff staff = param as Staff;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(StaffSQL.sqlUpdateStaff, [staff.firstName, staff.lastName, staff.phoneNumber, staff.email, staff.staffPosition.id, staff.clockStatus.id, staff.password, staff.isActive, staff.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  Future<Staff> getStaffByPassword(String password) async {
    try {
      var conn = await Database().getConn();
      var results = await conn.query(StaffSQL.sqlGetStaffByPassword, [password]);
      var staff = Staff();
      for (var row in results) {
        staff.id = row[0];
        staff.firstName = row[1];
        staff.lastName = row[2];
        staff.phoneNumber = row[3];
        staff.email = row[4];
        staff.staffPosition.id = row[5];
        staff.clockStatus.id = row[6];
        staff.password = row[7].toString();
        staff.isActive = row[8];
      }
      conn.close();
      return staff;
    } catch (e) {
      print(e);
      return Staff();
    }
  }

  Future<List<Staff>> getStaffByColumn(String columnName, String value) async {
    try {
      var staffList = <Staff>[];
      var conn = await Database().getConn();
      var results = await conn.query(StaffSQL.sqlGetStaffByColumn, [columnName, value]);
      var staff = Staff();
      for (var row in results) {
        staff.id = row[0];
        staff.firstName = row[1];
        staff.lastName = row[2];
        staff.phoneNumber = row[3];
        staff.email = row[4];
        staff.staffPosition.id = row[5];
        staff.clockStatus.id = row[6];
        staff.password = row[7].toString();
        staff.isActive = row[8];
        staffList.add(staff);
      }
      conn.close();
      return staffList;
    } catch (e) {
      print(e);
      return <Staff>[];
    }
  }
}
