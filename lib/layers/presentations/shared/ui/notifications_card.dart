import 'package:flutter/cupertino.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        height: 140,
        child: Column(
          children: [
            Image.asset('lib/photo/Salebanner.png'),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
