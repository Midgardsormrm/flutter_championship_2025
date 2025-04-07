import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/test_screen.dart';



final GoRouter router = GoRouter(
  initialLocation: '/signin',
  routes: <GoRoute>[
    GoRoute(path: '/signin', builder: (context, state) => SigninScreen(),
    routes: [
      GoRoute(path: 'popular', builder: (context, state) => PopularScreen(),)
    ]),
    GoRoute(path: '/test', builder: (context, state) => SigninScreen(),),
  ]
);
