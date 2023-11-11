import 'package:firebase_user_authentication/screens/home_screen.dart';
import 'package:firebase_user_authentication/screens/login_register_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_user_authentication/auth.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        ///If you have data inside the user then it will go to HomeScreen else LoginScreen.
        if(snapshot.hasData){
          return HomeScreen();
        }else{
          return const LoginScreen();
        }
      },
    );
  }
}
