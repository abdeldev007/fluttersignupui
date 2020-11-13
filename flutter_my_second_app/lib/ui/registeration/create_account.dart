
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:fluttermysecondapp/ui/widgets/button_facebook_google.dart';
import 'package:fluttermysecondapp/ui/widgets/button_use_email.dart';
import 'package:fluttermysecondapp/ui/widgets/centered_text.dart';
import 'package:fluttermysecondapp/ui/widgets/down_paint_shape.dart';
import 'package:fluttermysecondapp/ui/widgets/paint_shape.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///D:/ABDALLAH%20ID%20LAHCEN/Android%20Studio/Flutter%20Projects/flutter_my_second_app/lib/ui/registeration/registration_email_password.dart';
import '../profile/login_screen.dart';


class CreateAccount extends StatefulWidget {
  static const String id = 'create_account';

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
      title: '',
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,

                  child: Stack(

                    children: <Widget>[
                      Container(
                        width: _screenWidth,
                        height: _screenHeight / 7,
                        child: CustomPaint(
                          painter: CurvePainter(),
                        ),
                      ),
                    ],
                  ),
                ),


                CenteredText('Sign Up', 0, Colors.blue[900], 30, 'Modak'),

                CenteredText(
                    'It\'s easier to sing up now ', 10, Colors.grey, 15, null),
                ButtonFacebook(
                    Colors.blue[800],
                    Colors.blue[900],
                    'Continue with Facebook',
                    Colors.white,
                    FontAwesomeIcons.facebook,
                    clickFacebook),
                SizedBox(height: 5),
                ButtonFacebook(
                    Colors.red[800],
                    Colors.red[900],
                    'Continue with Google',
                    Colors.white,
                    FontAwesomeIcons.google,
                    clickGoogle(context)),
                SizedBox(height: 5),
                ButtonUseEmailOrPhone(Colors.white, Colors.white,
                    'I\'ll use email or phone', Colors.blue,
                    clickEmailPassword),
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                          width: _screenWidth * 0.7,
                          height: _screenHeight / 15,
                          child: CustomPaint(
                            painter: CurvePainterDown(),
                          )),
                      onTap: () {
                        alreadyHaveAccount();
                      },
                    ),
                    Text('Already have account ! ',
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
}

double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
double _screenWidth = WidgetsBinding.instance.window.physicalSize.width;
double _screenHeight = WidgetsBinding.instance.window.physicalSize.height;
bool _rememberMe = true;

void clickFacebook() {
  // Navigator.pushNamed(_context, CreateAccount.id);

}

void clickEmailPassword() {
  Navigator.pushNamed(_context, EmailPasswordRegisteration.id);
}

  clickGoogle(BuildContext context) {
  /*
  Auth auth=new Auth();
  auth
      .googleSignIn()
      .then((result) {
    if (result != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return MainPage();
          },
        ),
      );
    }
  } );

   */
      }

void alreadyHaveAccount() {
  Navigator.pushNamed(_context, Login.id);
}

BuildContext _context;
