import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen2 extends StatelessWidget {
  const DetailsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 44.0,
          bottom: 47.0,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 90),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () => {context.go('/')},
                              icon: Icon(CupertinoIcons.arrow_left),
                            ),
                          ],
                        )),
                    Row(
                      children: [
                        Text(
                          'Sneaker Shop',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.shopping_bag),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Nike Air Max 270\nEssential',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Men`s shoes',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '₽179.39',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/photo/nikezoombig2.png',
                    width: 240,
                    height: 125,
                  ),
                )
              ],
            )),
            Container(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  child: Image.asset(
                    'assets/photo/slider2.png',
                    width: 364,
                    height: 77,
                  ),
                )
              ],
            )),
            Container(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  child: Image.asset(
                    'assets/photo/airmaxshoes.png',
                    width: 406,
                    height: 56,
                  ),
                )
              ],
            )),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Вставка Max Air 270 обеспечивает\nнепревзойденный комфорт в течение всего\nдня. Изящный дизайн ........',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        'Подробнее',
                        style: TextStyle(
                            color: Colors.cyanAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart,
                      size: 24,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Image.asset('assets/photo/idk.png'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
