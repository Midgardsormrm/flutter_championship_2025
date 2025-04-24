import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matule/core/router/router.dart';
import 'package:matule/layers/presentations/screens/signin_screen.dart';
import 'package:matule/layers/presentations/screens/popular_screen.dart';
import 'package:matule/trash/test_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/zoom_drawer/async_drawe_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  Get.put<AsyncDraweController>(AsyncDraweController());
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}