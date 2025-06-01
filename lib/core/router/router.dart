import 'package:go_router/go_router.dart';
import 'package:matule/core/zoom_drawer/menu_drawer.dart';
import 'package:matule/layers/presentations/screens/basket_screen.dart';
import 'package:matule/layers/presentations/screens/category/category_all_screen.dart';
import 'package:matule/layers/presentations/screens/category/category_outdoor_screen.dart';
import 'package:matule/layers/presentations/screens/category/category_running_screen.dart';
import 'package:matule/layers/presentations/screens/category/category_tennis_screen.dart';
import 'package:matule/layers/presentations/screens/delivery/checkout_screen.dart';
import 'package:matule/layers/presentations/screens/details_screen.dart';
import 'package:matule/layers/presentations/screens/details_screen2.dart';
import 'package:matule/layers/presentations/screens/edit_profile.dart';
import 'package:matule/layers/presentations/screens/favorite_screen.dart';
import 'package:matule/layers/presentations/screens/home_screen.dart';
import 'package:matule/layers/presentations/screens/popular_screen.dart';
import 'package:matule/layers/presentations/screens/profile_screen.dart';
import 'package:matule/layers/presentations/screens/register_screen.dart';
import 'package:matule/layers/presentations/screens/root_screen.dart';
import 'package:matule/layers/presentations/screens/signin_screen.dart';
import 'package:matule/layers/presentations/screens/forgot_pass.dart';
import 'package:matule/layers/presentations/screens/verif_screen.dart';
import 'package:matule/layers/presentations/screens/notifications_screen.dart';
// final router = GoRouter(
//   initialLocation: '/',
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SigninScreen(),
//       routes: [
//         GoRoute(
//           path: '/popular',
//           builder: (context, state) => PopularScreen()
//           )
//       ]
//     ),
//   ],
// );

final router = GoRouter(
  initialLocation: '/signin',
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => RootScreen(
              navigationShell: navigationShell,
            ),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => HomeScreen(),
              routes: [
                GoRoute(
                  path: 'all',
                  builder: (context, state) => CategoryAllScreen(),
                ),
                GoRoute(
                  path: 'outdoor',
                  builder: (context, state) => CategoryOutdoorScreen(),
                ),
                GoRoute(
                  path: 'tennis',
                  builder: (context, state) => CategoryTennisScreen(),
                ),
                GoRoute(
                  path: 'running',
                  builder: (context, state) => CategoryRunningScreen(),
                ),
              ],
            ),
          ]),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorite',
                builder: (context, state) => FavoriteScreen(),
              ),
            ],
          ),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/test',
              builder: (context, state) => NotificationsScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/profile',
                builder: (context, state) => ProfileScreen(),
                routes: [])
          ])
        ]),
    GoRoute(path: '/popular', builder: (context, state) => PopularScreen()),
    GoRoute(
      path: '/basket',
      builder: (context, state) => BasketScreen(),
      routes: [
        GoRoute(
          path: 'checkout',
          builder: (context, state) => CheckoutScreen(),
        ),
      ],
    ),
    // no auth
    GoRoute(
        path: '/signin',
        builder: (context, state) => SigninScreen(),
        routes: [
          GoRoute(
              path: 'register',
              builder: (context, state) => RegisterScreen(),
              routes: [
                GoRoute(
                    path: 'forgot',
                    builder: (context, state) => ForgotPass(),
                    routes: [
                      GoRoute(
                          path: 'verif',
                          builder: (context, state) => VerifScreen(),
                          routes: [])
                    ])
              ]),
        ]),
    GoRoute(
        path: '/profle',
        builder: (context, state) => EditProfile(),
        routes: [
          GoRoute(
            path: 'menu',
            builder: (context, state) => MenuDrawer(),
          )
        ]),

    GoRoute(
        path: '/details',
        builder: (context, state) => DetailsScreen(),
        routes: [
          GoRoute(
            path: '/details2',
            builder: (context, state) => DetailsScreen2(),
          )
        ]),
  ],
);
//   GoRoute(
//       path: '/signin',
//       builder: (context, state) => SigninScreen(),
//       routes: [
//         GoRoute(
//             path: '/register',
//             builder: (context, state) => RegisterScreen(),
//             routes: [
//               GoRoute(
//                   path: '/forgot',
//                   builder: (context, state) => ForgotScreen(),
//                   routes: [
//                     GoRoute(
//                       path: '/popular',
//                       builder: (context, state) => PopularScreen(),
//                     )
//                   ])
//             ])
//       ]),
// ]);
