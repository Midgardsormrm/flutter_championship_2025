import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/zoom_drawer/async_drawe_controller.dart';
import 'package:matule/core/zoom_drawer/menu_drawer.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen>  {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AsyncDraweController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuDrawer(),
        // menuScreenWidth: 600,
        mainScreenTapClose: true,
        menuScreenTapClose: true,
        menuBackgroundColor: CupertinoColors.systemCyan,
        showShadow: false,
        mainScreen: Scaffold(
          body: widget.navigationShell,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bell), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: ''),
            ],
            onTap: (index) {
              index == 2 ? ZoomDrawer.of(context)?.open() : print(index);
              widget.navigationShell.goBranch(
                index,
                initialLocation: index == widget.navigationShell.currentIndex,
              );
            },
          ),
        ),
        borderRadius: 24.0,
        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}
