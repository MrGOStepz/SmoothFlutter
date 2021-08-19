abstract class CRUDRepository<T> {
  Future<T> getAll();
  Future<bool?> add(T param);
  Future<bool?> update(T param);
  Future<bool?> delete(T param);
}
