import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 182,
        width: 160,
        color: Colors.white,
        child: Stack(children: [
          Container(
            color: Colors.white,
            width: double.maxFinite,
          ),
          Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart_solid,
                  color: Colors.red,
                ),
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                  iconSize: WidgetStatePropertyAll(20),
                ),
              )),
          Positioned(
              bottom: 80,
              left: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'lib/photo/nike_zoom.png',
                        width: 142,
                        height: 70,
                      ),
                    )
                  ])),
          Container(
            padding: const EdgeInsets.only(left: 0, right: 40, top: 100),
            child: Text(
              'BEST SELLER',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color.fromRGBO(72, 178, 231, 1),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, right: 50, top: 115),
            child: Text(
              'Nike Air Max\n\n₽752.00',
              style: TextStyle(
                  color: Color.fromRGBO(106, 106, 106, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.teal,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.plus),
                ),
              ))
        ]));
  }
}
