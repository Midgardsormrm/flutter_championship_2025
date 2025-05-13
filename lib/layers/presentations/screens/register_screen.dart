import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                          onPressed: () => {context.go('/signin')},
                          icon: Icon(CupertinoIcons.arrow_left),
                        ),
                      ],
                    )),
                    SizedBox(height: 18.0),
                    Text(
                      'Регистрация',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Заполните Свои данные или\nпродолжите через социальные медиа',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Ваше имя',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 237, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(),
                          labelText: "Введите имя",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                    SizedBox(height: 10),
                    Text(
                      'Пароль',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 237, 241),
                          borderRadius: BorderRadius.circular(14)),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle: TextStyle(),
                              labelText: "Введите пароль",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: InputBorder.none),
                          keyboardType: TextInputType.text,
                          inputFormatters: <TextInputFormatter>[]),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.check_mark_circled_solid,
                            size: 12,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: [
                              Text(
                                  'Даю согласие на обработку\nперсональных данных'),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 0),
                                    child: IconButton(
                                        onPressed: () => {
                                              context
                                                  .go('/signin/register/forgot')
                                            },
                                        icon: Text(
                                          textAlign: TextAlign.right,
                                          'Забыл пароль',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 237, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          icon: Text(
                            'Зарегистрироваться',
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
                          onPressed: () => {context.go('/signin')}),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () => {context.go('/signin')},
                        icon: Text(
                          'Есть аккаунт? Войти',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
