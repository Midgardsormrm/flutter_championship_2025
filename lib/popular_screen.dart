import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';
import 'package:flutter/cupertino.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 76),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Text(
                    'Популярное',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Container(
                child: ProductCard(),
              ),
              Container(
                child: ProductCard(),
              )
            ]),
      ),
    );
  }
}
