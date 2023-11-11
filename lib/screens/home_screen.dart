import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_user_authentication/auth.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final User? user =Auth().currentUser;

///Function to sign-out the user when triggered
  Future<void> signOut ()async{
    await Auth().signOut();
  }

  ///Custom Widgets below

  ///Title of the page
  Widget _title() {
    return const Text("Firebase Auth");
  }
  ///User-email showing
  Widget _userId() {
    return Text(user?.email ?? "user email");
  }

  ///Sign-out button
   ///Putting "_" underscore before a function tells you if the function is being used/called or not, if the function is
   ///used it turns yellow otherwise it turns grey.
  Widget _signOutButton () {
    return ElevatedButton(
      ///Sign-out buttom is triggering signOut function which is above.
        onPressed: signOut,
        child: const Text("Sign Out")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //Just an example
        // width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _userId(),
              _signOutButton(),
            ],
          ),
        ),
      ),

    );
  }
}
