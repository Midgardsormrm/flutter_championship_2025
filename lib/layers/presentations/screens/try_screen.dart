import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class TryScreen extends StatefulWidget {
  TryScreen({super.key});
  bool isHidden = false;
  List<int> someArr = [
    0,
    2,
    3,
    5,
  ];

  @override
  State<TryScreen> createState() => _TryScreenState();
}

class _TryScreenState extends State<TryScreen> {
  List<int> someArr = [
    0,
    2,
    3,
    5,
  ];
  void _onTap() {
    setState(() {
      widget.isHidden = !widget.isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => _onTap(),
        child: Container(
          color: widget.isHidden ? Colors.amber : CupertinoColors.systemCyan,
        ),
      ),
    );
  }
}
