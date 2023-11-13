import 'package:flutter/material.dart';

enum loginItem { id, password, login }

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: Colors.black26,
        icon: const Icon(
          Icons.login,
          color: Colors.white,
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<loginItem>>[
              const PopupMenuItem<loginItem>(
                value: loginItem.id,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 500.0,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.white,
                          )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.white,
                          )),
                          labelText: 'ID',
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              const PopupMenuItem<loginItem>(
                  value: loginItem.password,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 500.0,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                            )),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  )),
              PopupMenuItem<loginItem>(
                  value: loginItem.login,
                  child: TextButton(
                    onPressed: () {
                      print('login');
                    },
                    child: const Text(
                      '로그인',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ]);
  }
}
