import 'package:flutter/material.dart';
import 'package:login/providers/auth.dart';
import 'package:login/screen/auth_screen.dart';
import 'package:login/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value:Auth(),
      child: Consumer<Auth>(builder: ((context, auth, _) => MaterialApp(
        title: 'Login',
        home: auth.isAuth ? const Home() :  AuthScreen(),
      )
      ),
      )
      
      
      
      
      
    );
  }
}