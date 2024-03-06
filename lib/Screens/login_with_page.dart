import 'package:flutter/material.dart';

import 'login_with_google.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/fourth.jpg"),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "LoginWithPhone");
            },
            child: Container(
              height: 70,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(
                  "Login with Phone",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              signInWithGoogle();
              Navigator.pushNamed(context, "LoginWithPhone");
            },
            child: Container(
              height: 70,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(
                  "Login with Google",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
