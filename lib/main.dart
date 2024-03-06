import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import "package:internshala_task/Screens/boardingPage.dart";
import "package:internshala_task/Screens/login_with_google.dart";
import "package:internshala_task/Screens/login_with_page.dart";
import "package:internshala_task/Screens/login_with_phone.dart";
import "package:internshala_task/Screens/person_Details.dart";

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "LoginPageWith":(context)=>WelcomePage(),
        "LoginWithPhone":(context)=>LoginWithPhone(),
        "PersonalDetails":(context)=>PersonDetails()

      },
    );
  }
}