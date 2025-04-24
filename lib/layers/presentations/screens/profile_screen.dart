

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 44, bottom: 47),
            child: Column(children: [
              
              Text(
                'Профиль',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
              ),
              SizedBox(
                height: 46,
                width: 96,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'lib/photo/Ellipse_22.png',
                        width: 96,
                        height: 96,
                      ),
                    ),
                    Text(
                      'Emmanuel  Oyiboke',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Изменить фото профиля',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Color.fromRGBO(72, 178, 231, 1)),
                      textAlign: TextAlign.center,
                    )
                  ]),
              SizedBox(
                height: 10,
              ),
              Image.asset('lib/photo/Frame.png'),
              SizedBox(
                height: 19,
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Имя',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(247, 247, 249, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          TextField(
                              obscureText: true,
                              
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(),
                                  labelText: "Emmanuel",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.blue,
                                    size: 14,
                                  )),
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Фамилия',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(247, 247, 249, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(),
                                  labelText: "Oyiboke",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.blue,
                                    size: 14,
                                  )),
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Адрес',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(247, 247, 249, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(),
                                  labelText: "Nigeria",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.blue,
                                    size: 14,
                                  )),
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Телефон',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(247, 247, 249, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(),
                                  labelText: "8(931)6011622",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.blue,
                                    size: 14,
                                  )),
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
