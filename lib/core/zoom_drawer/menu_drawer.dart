import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: CupertinoColors.systemCyan),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 134,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'lib/photo/Ellipse_22.png',
                    width: 96,
                    height: 96,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            'Эмануэль Кверти',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/profile')},
                  icon: Icon(
                    CupertinoIcons.person,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/profile')},
                  icon: Text(
                    'Профиль',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Icon(
                    CupertinoIcons.bag,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Text(
                    'Корзина',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/popular')},
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/popular')},
                  icon: Text(
                    'Избранное',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Icon(
                    CupertinoIcons.bus,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Text(
                    'Заказы',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Icon(
                    CupertinoIcons.bell,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Text(
                    'Уведомления',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Icon(
                    CupertinoIcons.gear,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Text(
                    'Настройки',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
              color: Colors.white,
              width: 0,
            ))),
          ),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Icon(
                    CupertinoIcons.arrow_down_left,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => {context.go('/signin')},
                  icon: Text(
                    'Выйти',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
