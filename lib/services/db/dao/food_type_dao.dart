import 'package:smooth/models/types/food_type_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/food_type_sql.dart';

class FoodTypeDAO implements CRUDRepository {
  @override
  Future<List<FoodType>> getAll() async {
    var foodTypeList = <FoodType>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(FoodTypeSQL.sqlGetAllFoodType);
      var foodType = FoodType();
      for (var row in results) {
        foodType.id = row[0];
        foodType.name = row[1];
        foodTypeList.add(foodType);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return foodTypeList;
  }

  @override
  Future<bool?> add(param) async {
    var foodType = param as FoodType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(FoodTypeSQL.sqlAddFoodType, [foodType.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var foodType = param as FoodType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(FoodTypeSQL.sqlDeleteFoodType, [foodType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var foodType = param as FoodType;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(FoodTypeSQL.sqlDeleteFoodType, [foodType.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
