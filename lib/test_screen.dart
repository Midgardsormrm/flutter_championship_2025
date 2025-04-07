import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('ЛОЛ')],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.systemTeal,
              borderRadius: BorderRadius.circular(16),
            ),
            width: double.maxFinite,
            height: 500,
          ),
        ],
      ),
    ));
  }
}
