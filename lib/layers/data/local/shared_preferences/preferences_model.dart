import 'package:matule/layers/data/domain/entity/user_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesModel {
  final _storage = SharedPreferences.getInstance();

  void initStorage() async {
    final storage = await _storage;
    await storage.setBool('IsInit', true);
  }

  Future<bool> getIsInit() async {
    final storage = await _storage;
    final res = await storage.getBool('IsInit');
    if (res == null) {
      return false;
    } else {
      return res;
    }
  }

  void saveUser(UserEntity user) async {
    final storage = await _storage;

    storage.setString('name_key', user.name);
    storage.setString('last_name_key', user.lastname);
    storage.setString('addres_key', user.address);
  }

  Future<void> setName() async {
    // ignore: unused_local_variable
    final storage = await _storage;
    // storage.setString('qwe', _rootStore.profileDetails.name);
  }

  Future<void> readName() async {
    final storage = await _storage;
    final name = storage.getString('name_key');
    print(name);
    // _rootStore.profileDetails.changeName(name);
  }
}
