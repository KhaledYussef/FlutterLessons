import 'dart:ffi';

class IBaseEntity<T> {
  // Properties
  T? id;
  IBaseEntity(this.id);
}

class Student extends IBaseEntity<int> {
  String? nickName;
  Student(int id) : super(id);

  @override
  String fullName() {
    return this.nickName ?? '';
  }
}

class Teachers extends IBaseEntity<Long> {
  String? nickName;
  Teachers(Long id) : super(id);

  @override
  String fullName() {
    return this.nickName ?? '';
  }
}

void main() {
  var samir = new IBaseEntity(1);
}
