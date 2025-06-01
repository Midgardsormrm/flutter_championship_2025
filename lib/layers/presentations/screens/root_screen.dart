import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/zoom_drawer/menu_drawer.dart';

class RootScreen extends StatelessWidget {
  RootScreen({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuBackgroundColor: CupertinoColors.systemCyan,
        menuScreen: MenuDrawer(),
        mainScreen: BottomBar(
          navigationShell: navigationShell,
        ));
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SafeArea(child: navigationShell),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 128,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/photo/navbar.png',
                    height: 106,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 31,
                    right: 31,
                    bottom: 31.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => navigationShell.goBranch(0),
                                icon: Icon(CupertinoIcons.home, size: 21.5),
                              ),
                              IconButton(
                                onPressed: () => navigationShell.goBranch(1),
                                icon: Icon(CupertinoIcons.heart, size: 21.5),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => navigationShell.goBranch(2),
                                icon: Icon(CupertinoIcons.bell, size: 21.5),
                              ),
                              IconButton(
                                onPressed: () => navigationShell.goBranch(3),
                                icon: Icon(
                                  CupertinoIcons.person_fill,
                                  size: 21.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 44,
                    child: Container(
                      alignment: Alignment.center,
                      child: FloatingActionButton(
                          heroTag: null,
                          child: Icon(
                            CupertinoIcons.bag,
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          backgroundColor: Color.fromRGBO(72, 178, 231, 1),
                          onPressed: () => context.push('/basket')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import 'package:go_router/go_router.dart';
// import 'package:matule/core/zoom_drawer/async_drawe_controller.dart';
// import 'package:matule/core/zoom_drawer/menu_drawer.dart';

// class RootScreen extends StatefulWidget {
//   const RootScreen({super.key, required this.navigationShell});

//   final StatefulNavigationShell navigationShell;

//   @override
//   State<RootScreen> createState() => _RootscreenState();
// }

// class _RootscreenState extends State<RootScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AsyncDraweController>(
//       builder: (_) => ZoomDrawer(
//         controller: _.zoomDrawerController,
//         menuScreen: MenuDrawer(),
//         menuScreenWidth: 600,
//         mainScreenTapClose: true,
//         menuScreenTapClose: true,
//         menuBackgroundColor: CupertinoColors.systemCyan,
//         showShadow: false,
//         mainScreen: Scaffold(
//           body: widget.navigationShell,
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.home), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.heart), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.bell), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.profile_circled), label: ''),
//             ],
//             onTap: (index) {
//               index == 2 ? ZoomDrawer.of(context)?.open() : print(index);
//               widget.navigationShell.goBranch(
//                 index,
//                 initialLocation: index == widget.navigationShell.currentIndex,
//               );
//             },
//           ),
//         ),
//         borderRadius: 24.0,
//         angle: -12.0,
//         drawerShadowsBackgroundColor: Colors.grey,
//         slideWidth: MediaQuery.of(context).size.width * 0.65,
//       ),
//     );
//   }
// }
