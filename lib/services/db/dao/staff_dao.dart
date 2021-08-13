import 'package:smooth/model/person/staff_model.dart';
import 'package:smooth/services/db/dao/db.dart';
import 'crud_repository.dart';

class StaffDAO implements CRUDRepository{
  @override
  Future<bool?> add(param) async {
    var result = await Database.conn.query('insert into users (name, email, age) values (?, ?, ?)', ['Bob', 'bob@bob.com', 25]);
    return result.isNotEmpty;
  }

  @override
  Future<bool?>  delete(param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<bool?>  update(param) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future getAll(param) async {
    Staff result = (await Database.conn.query("")) as Staff;
    return result;
  }
}