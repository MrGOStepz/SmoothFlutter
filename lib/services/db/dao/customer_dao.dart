import 'package:smooth/models/people/customer_model.dart';
import 'package:smooth/services/db/crud_repository.dart';
import 'package:smooth/services/db/db.dart';
import 'package:smooth/services/db/sql/customer_sql.dart';

class CustomerDAO implements CRUDRepository {
  @override
  Future<List<Customer>> getAll() async {
    var customerList = <Customer>[];
    try {
      var conn = await Database().getConn();
      var results = await conn.query(CustomerSQL.sqlGetAllCustomer);
      var customer = Customer();
      for (var row in results) {
        customer.id = row[0];
        customer.firstName = row[1];
        customer.lastName = row[2];
        customer.phoneNumber = row[3];
        customer.email = row[4];
        customer.address = row[5];
        customer.totalOrder = row[6];
        customer.lastActive = row[7];
        customer.dob = row[8];
        customer.card = row[9];
        customer.isActive = row[10];
        customerList.add(customer);
      }
      conn.close();
    } catch (e) {
      print(e);
    }
    return customerList;
  }

  @override
  Future<bool?> add(param) async {
    var customer = param as Customer;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CustomerSQL.sqlAddCustomer, [customer.firstName, customer.lastName, customer.phoneNumber, customer.email, customer.address, customer.totalOrder, customer.lastActive, customer.dob, customer.card, customer.isActive]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> delete(param) async {
    var customer = param as Customer;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CustomerSQL.sqlDeleteCustomer, [customer.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<bool?> update(param) async {
    var customer = param as Customer;
    var isSuccess = false;
    try {
      var conn = await Database().getConn();
      await conn.query(CustomerSQL.sqlUpdateCustomer, [customer.firstName, customer.lastName, customer.phoneNumber, customer.email, customer.address, customer.totalOrder, customer.lastActive, customer.dob, customer.card, customer.isActive, customer.id]);
      conn.close();
      isSuccess = true;
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  Future<List<Customer>> getCustomerByColumn(String columnName, String value) async {
    try {
      var customerList = <Customer>[];
      var conn = await Database().getConn();
      var results = await conn.query(CustomerSQL.sqlGetCustomerByColumn, [columnName, value]);
      var customer = Customer();
      for (var row in results) {
        customer.id = row[0];
        customer.firstName = row[1];
        customer.lastName = row[2];
        customer.phoneNumber = row[3];
        customer.email = row[4];
        customer.address = row[5];
        customer.totalOrder = row[6];
        customer.lastActive = row[7];
        customer.dob = row[8];
        customer.card = row[9];
        customer.isActive = row[10];
        customerList.add(customer);
      }
      conn.close();
      return customerList;
    } catch (e) {
      print(e);
      return <Customer>[];
    }
  }
}
