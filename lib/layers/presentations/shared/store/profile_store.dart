import 'package:matule/layers/data/domain/entity/user_entity.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  @observable
  late UserEntity _userEntity;

  @action
  void main() async {
    _userEntity = UserEntity(
      name: '',
      lastname: '',
      address: '',
      number: 123,
      item: item,
      items: [],
      basket: [],
    );
    print(_userEntity.name);
    changeName();
    print(_userEntity.name);
  }

  @action
  changeName() {
    _userEntity.name = 'qwe';
  }
}
