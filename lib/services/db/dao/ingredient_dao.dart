import 'package:smooth/models/products/ingredient.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/ingredient_sql.dart';

class IngredientDAO implements CRUDRepository {
  @override
  Future<List<Ingredient>> getAll() async {
    var ingredientList = <Ingredient>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(IngredientSQL.sqlGetAllIngredient);
      var ingredient = Ingredient();
      for (var row in results) {
        ingredient.id = row[0];
        ingredient.name = row[1];
        ingredientList.add(ingredient);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return ingredientList;
  }

  @override
  Future<bool?> add(param) async {
    var ingredient = param as Ingredient;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(IngredientSQL.sqlAddIngredient, [ingredient.name]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var ingredient = param as Ingredient;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(IngredientSQL.sqlDeleteIngredient, [ingredient.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var ingredient = param as Ingredient;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(IngredientSQL.sqlDeleteIngredient, [ingredient.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }
}
