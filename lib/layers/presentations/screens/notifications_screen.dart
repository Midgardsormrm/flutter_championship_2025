import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/layers/presentations/shared/ui/notifications_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    for (var i = 0; i <= 20; i++) widgets.add(NotificationsCard());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        
        // child: GridView.count(
        //   primary: false,
        //   crossAxisSpacing: 0,
        //   mainAxisSpacing: 0,
        //   crossAxisCount: 1,
        //   children: List.generate(100, (index) {
        //       return Center(
        //         child: NotificationsCard(),
        //       );
        //     }),
        // ),

        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            
            children: widgets,
            
          ),
          
        ),
      ),
    );
  }
}
