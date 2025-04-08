import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/main.dart';
import 'package:flutter/services.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 44.0,
          bottom: 47.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => {context.go('/signin/register')},
                        icon: Icon(CupertinoIcons.arrow_left_circle),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Забыл Пароль',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Введите свю учетную запись\nдля сброса',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 237, 241),
                      borderRadius: BorderRadius.circular(14)),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(),
                          labelText: "Введите почту",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none),
                      keyboardType: TextInputType.text,
                      inputFormatters: <TextInputFormatter>[]),
                ),
                SizedBox(height: 40,),
                Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 237, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          icon: Text(
                            'Отправить',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.lightBlue)),
                          color: Colors.blue,
                          splashColor: Colors.white,
                          iconSize: 36,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () => {context.go('/signin/register/forgot/popular')}),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
