import 'package:matule/layers/presentations/screens/root_screen.dart';
import 'package:matule/layers/presentations/shared/store/test_store.dart';
import 'package:mobx/mobx.dart';

class RootStore with Store {
  final testStore = TestStore();

  static final RootStore _singleton = RootStore._internal();
  factory RootStore() {
    return _singleton;
  }
  RootStore._internal();

  void main() {}
}
