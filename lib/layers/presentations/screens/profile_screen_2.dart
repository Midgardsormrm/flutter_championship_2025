import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

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
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => {context.go('/profile')},
                  icon: Icon(CupertinoIcons.arrow_left),
                ),
              ],
            )),
            Column(
              children: [
                Text(
                  'Профиль',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/photo/Ellipse_22.png',
                            width: 96,
                            height: 96,
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 28.0),
                              Text(
                                'Ваше Имя',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 228, 237, 241),
                                    borderRadius: BorderRadius.circular(14)),
                                child: TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    labelText: "EMMANUEL OYIBOKE",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 228, 237, 241),
                                    borderRadius: BorderRadius.circular(14)),
                                child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        labelText: "emmanueloyiboke@gmail.com",
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        border: InputBorder.none),
                                    keyboardType: TextInputType.text,
                                    inputFormatters: <TextInputFormatter>[]),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Пароль',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 228, 237, 241),
                                    borderRadius: BorderRadius.circular(14)),
                                child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        labelStyle: TextStyle(),
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        border: InputBorder.none),
                                    keyboardType: TextInputType.text,
                                    inputFormatters: <TextInputFormatter>[]),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                child: Text(
                                  'Восстановить пароль',
                                  style: TextStyle(color: Colors.blueGrey),
                                  textAlign: TextAlign.right,
                                ),
                                onTap: () =>
                                    context.push('/signin/register/forgot'),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 228, 237, 241),
                                    borderRadius: BorderRadius.circular(12)),
                                child: IconButton(
                                    icon: Text(
                                      'Сохранить',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.lightBlue)),
                                    color: Colors.blue,
                                    splashColor: Colors.white,
                                    iconSize: 36,
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () => {}),
                              ),
                            ])
                      ]),
                ),
              ],
            ),
          ])
        ],
      ),
    ));
  }
}
