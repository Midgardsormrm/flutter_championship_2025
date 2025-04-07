import 'package:flutter/material.dart';
import 'package:matule/router.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/test_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const SigninScreen());
}

class SigninScreen extends StatelessWidget{
  const SigninScreen({super.key});

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