 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermysecondapp/ui/widgets/button_log_in.dart';
import 'package:fluttermysecondapp/ui/widgets/down_paint_shape.dart';
import 'package:fluttermysecondapp/ui/main/home.dart';

import 'package:fluttermysecondapp/ui/widgets/email_password_text_field.dart';
import 'package:fluttermysecondapp/ui/widgets/paint_shape.dart';
 import 'create_account.dart';

class EmailPasswordRegisteration extends StatefulWidget {
  static const String id = 'registration_email';

  @override
  _EmailPasswordRegisterationState createState() =>
      _EmailPasswordRegisterationState();
}

class _EmailPasswordRegisterationState
    extends State<EmailPasswordRegisteration> {
//  final _firestore =Firestore.instance;
//  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
      title: '',
      home: Scaffold(
        // backgroundColor: Color(0xFFa30000) ,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: _screenWidth,
                        height: _screenHeight / 6,
                        child: CustomPaint(
                          painter: CurvePainter(),
                        ),
                      ),
                      // CenteredText('Welcome Back', 35, Colors.white, 30, null),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //  CenteredText('Log In', 0, Color(0xFF002071), 40, 'Modak'),
                EmailTextField(
                    'Username',
                    Icon(
                      Icons.contact_mail,
                      color: Colors.blue,
                    )),
                EmailTextField(
                    'Email',
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                    )),
                PasswordTextField(),

                ButtonLogIn('Register', clickOk),
                Stack(
                  alignment: Alignment.centerLeft,

                  children: <Widget>[
                    GestureDetector(

                      child: Container(
                          width: _screenWidth*0.7,
                          height: _screenHeight / 15,
                          child: CustomPaint(
                            painter: CurvePainterDown(),
                          )),
                      onTap: () {
                        useEmailPasswordBtn();
                      },
                    ),
                   Text('No Account yet ! ',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.white)),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clickOk() async {
    Navigator.pushNamed(_context, HomePage.id);

    /*  print(EmailTextField.getEmail());
    print(EmailTextField.getUsername());
    print(PasswordTextField.getPassword());
    try {
      final new_user = await auth.createUserWithEmailAndPassword(
          email: EmailTextField.getEmail(),
          password: PasswordTextField.getPassword());
      FirebaseUser user=await auth.currentUser();
      _firestore.collection('users').document(user.displayName).setData(
        {
          'email': EmailTextField.getEmail(),
          'username':EmailTextField.getUsername(),
          'id':user.displayName
        }
      );
      if(new_user!=null){
        Navigator.pushNamed(_context, HomePage.id);
      }
    } catch (e) {
      print(e);
    }


   */

  }

  void useEmailPasswordBtn() {

    Navigator.pushNamed(_context, CreateAccount.id);
  }

  BuildContext _context;
}

double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
double _screenWidth = WidgetsBinding.instance.window.physicalSize.width;
double _screenHeight = WidgetsBinding.instance.window.physicalSize.height;
bool _rememberMe = true;
