import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

part 'test_store.g.dart';

class TestStore = _TestStore with _$TestStore;

abstract class _TestStore with Store {

  


  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}