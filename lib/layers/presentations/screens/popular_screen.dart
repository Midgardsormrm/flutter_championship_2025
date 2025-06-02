import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentations/shared/ui/product_card.dart';
import 'package:flutter/cupertino.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    for (var i = 0; i <= 20; i++)
      widgets.add(ProductCard(name: 'Nike', price: 752, id: 1, category: 1));
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              IconButton(
                onPressed: () => {context.go('/signin')},
                icon: Icon(CupertinoIcons.arrow_left),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'Популярное',
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Center(
                        child: Icon(CupertinoIcons.heart),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child:
                    ProductCard(name: 'Nike', price: 752, id: 1, category: 1),
              );
            }),
          ),
        ));
  }
}
