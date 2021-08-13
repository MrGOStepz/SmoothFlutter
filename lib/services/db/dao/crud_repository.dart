abstract  class CRUDRepository<T> {
  Future<bool?>  add(T param);
  Future<bool?>  update(T param);
  Future<bool?>  delete(T param);
  Future<T?> getAll(T param);
}