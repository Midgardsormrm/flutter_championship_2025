import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentations/screens/details_screen.dart';
import 'package:matule/layers/presentations/screens/popular_screen.dart';
import 'package:matule/layers/presentations/screens/profile_screen.dart';
import 'package:matule/layers/presentations/screens/register_screen.dart';
import 'package:matule/layers/presentations/screens/rootscreen.dart';
import 'package:matule/layers/presentations/screens/signin_screen.dart';
import 'package:matule/trash/test_screen.dart';
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
        builder: (context, state, navigationShell) => Rootscreen(
              navigationShell: navigationShell,
            ),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/signin', builder: (context, state) => SigninScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/popular',
              builder: (context, state) => PopularScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/test',
              builder: (context, state) => NotificationsScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/profile',
            builder: (context, state) => ProfileScreen(),)
          ])
        ]),

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
                    routes:[ GoRoute(
                      path: 'verif',
                      builder: (context, state) => VerifScreen(),
                    )])
              ]),
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
