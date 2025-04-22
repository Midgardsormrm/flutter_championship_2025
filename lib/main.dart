import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matule/router.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/test_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/zoom_drawer/async_drawe_controller.dart';

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