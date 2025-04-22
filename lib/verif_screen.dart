import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/test_screen.dart';
import 'package:input_code_field/input_code_field.dart';

class VerifScreen extends StatelessWidget {
  final InputCodeControl codeControl = InputCodeControl();
  VerifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 18, left: 40, right: 20),
        child: Container(
          width: 335,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'OTP Проверка',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Пожалуйста, проверьте свою\n электронную почту что увидеть код подтверждения',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 250),
                      child: Text(
                        'OTP код',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                        ),
                        textAlign: TextAlign.end,
                      )),
                ],
              ),
              Container(height: 99,
              width: 336,
              child: InputCodeField(control: codeControl,
              decoration: InputCodeDecoration(
                textStyle: Theme.of(context).textTheme.headlineSmall,
                box: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: CupertinoColors.lightBackgroundGray
                )
              ),),),
              Row(
                children: [Text('Отправить заново'),
                Spacer(),
                Text('00:30')],
                


              )
            ],
          ),
        ),
      ),
    );
  }
}
