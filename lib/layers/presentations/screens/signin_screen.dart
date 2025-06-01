import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              SizedBox(height: 78.0),
              Text(
                'Привет!',
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
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(),
                    labelText: "Введите почту",
                    hintStyle: TextStyle(
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
              SizedBox(height: 10),
              GestureDetector(
                child: Text(
                  'Восстановить',
                  textAlign: TextAlign.right,
                ),
                onTap: () => context.push('/signin/register/forgot'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 237, 241),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    icon: Text(
                      'Войти',
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
                    onPressed: () => {context.go('/')}),
              ),
              SizedBox(
                height: 182,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Вы впервые?',
                        style: TextStyle(color: Colors.black12),
                      ),
                      GestureDetector(
                        child: Text('Создать пользователя'),
                        onTap: () => context.push('/signin/register'),
                      ),
                    ],
                  )
                ],
              )
            ])
          ]),
    ));
  }
}
