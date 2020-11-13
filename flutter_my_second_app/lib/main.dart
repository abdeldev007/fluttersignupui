import 'package:flutter/material.dart';
import 'package:fluttermysecondapp/ui/main/home.dart';
import 'file:///D:/ABDALLAH%20ID%20LAHCEN/Android%20Studio/Flutter%20Projects/flutter_my_second_app/lib/ui/registeration/create_account.dart';
import 'package:fluttermysecondapp/ui/profile/login_screen.dart';
import 'file:///D:/ABDALLAH%20ID%20LAHCEN/Android%20Studio/Flutter%20Projects/flutter_my_second_app/lib/ui/registeration/registration_email_password.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

       return new MaterialApp(
        home: new Login(),
         initialRoute: Login.id,
         routes: {

           CreateAccount.id  :(context) =>CreateAccount(),
           Login.id:(context) =>Login(),
           HomePage.id:(context )=>HomePage(),
           EmailPasswordRegisteration.id:(context )=>EmailPasswordRegisteration(),

         },
       );

  }
}
