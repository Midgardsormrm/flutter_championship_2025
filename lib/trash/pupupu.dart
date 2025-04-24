import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'
;
class Pupupu extends StatefulWidget {
  const Pupupu({super.key});

  @override
  State<Pupupu> createState() => _PuPuPuState();

}

class _PuPuPuState extends State<Pupupu> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> messageList = [];
  String tempMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 40, bottom: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.menu),
                ),
                Text('root'),
                SizedBox(width: 40,)
              ],
            ),
            SizedBox(height: 22,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 278,
                height: 42,
                child: TextField(
                  controller: _textEditingController,
                  onSubmitted: (textFieldCurrentText) {
                    messageList.add(textFieldCurrentText);
                    _textEditingController.text = '';
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password', 
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()  {
                  messageList.add(tempMessage); 
                  _textEditingController.text = '';

                },
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemCyan,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(CupertinoIcons.add),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}