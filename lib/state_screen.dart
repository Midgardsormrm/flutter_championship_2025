import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StateScreen extends StatefulWidget {
  StateScreen({super.key});
  bool isTextFieldObscureText = true;
  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
    void changeEyeState (){
        setState(() {
          print('нажатие');
          widget.isTextFieldObscureText = !widget.isTextFieldObscureText;
          print(widget.isTextFieldObscureText);
        });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            if (widget.isTextFieldObscureText)
              Container(
                color: Colors.blue,
                height: 20,
                width: 20,
              ),
            GestureDetector(
              onTap: () => (),
              child: Icon(
                widget.isTextFieldObscureText
                    ? CupertinoIcons.eye_slash
                    : CupertinoIcons.eye,
              ),
            ),
            Text('${widget.isTextFieldObscureText}')
          ],
        ),
      ),
    );
  }
}
