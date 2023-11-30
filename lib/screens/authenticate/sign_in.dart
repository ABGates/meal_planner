import "package:flutter/material.dart";
import "package:meal_planner/services/auth.dart";

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        title: const Text('Sign In to Meal Planner'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: const Text('Sign In Anonymously'),
          onPressed: () async{
            dynamic res =  _auth.signInAnon();
            if (res == null){
              print('Error signing in');
            } else{
              print('Signed In');
              print(res);
            }
          },
        )
      )
    );
  }
}