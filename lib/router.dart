import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/test_screen.dart';
import 'package:matule/register_screen.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/forgot_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/signin', 
  routes: <GoRoute>[
  
  GoRoute(
      path: '/signin',
      builder: (context, state) => SigninScreen(),
      routes: [
        GoRoute(
            path: '/register',
            builder: (context, state) => RegisterScreen(),
            routes: [
              GoRoute(
                  path: '/forgot',
                  builder: (context, state) => ForgotScreen(),
                  routes: [
                    GoRoute(
                      path: '/popular',
                      builder: (context, state) => PopularScreen(),
                    )
                  ])
            ])
      ]),
]);
