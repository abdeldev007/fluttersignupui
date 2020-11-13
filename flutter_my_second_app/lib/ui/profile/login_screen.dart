import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermysecondapp/ui/main/home.dart';
import 'package:fluttermysecondapp/ui/widgets/button_log_in.dart';
import 'package:fluttermysecondapp/ui/widgets/centered_text.dart';
import 'package:fluttermysecondapp/ui/widgets/down_paint_shape.dart';
import 'package:fluttermysecondapp/ui/widgets/email_password_text_field.dart';
import 'package:fluttermysecondapp/ui/widgets/paint_shape.dart';
 import 'package:progress_dialog/progress_dialog.dart';
import '../registeration/create_account.dart';

class Login extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
//  final _auth = FirebaseAuth.instance;
  // FirebaseUser currentUser ;
  ProgressDialog pr  ;

  @override
  void initState() {
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
     _context = context;
     pr=ProgressDialog(context);
     pr = ProgressDialog(context,type: ProgressDialogType.Normal, isDismissible:  false, showLogs: true );

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
                        height: _screenHeight / 7,
                        child: CustomPaint(
                          painter: CurvePainter(),
                        ),
                      ),
                      CenteredText('ABDEV', 40, Colors.white, 20, null),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CenteredText('Log In', 0, Color(0xFF002071), 30, 'Modak'),
                EmailTextField(
                    'Email',
                    Icon(
                      Icons.mail,
                      color: Colors.blue,
                    )),
                PasswordTextField(),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 2),
                            child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              focusColor: Colors.blue,
                              value: _rememberMe,
                              onChanged: (bool value) {
                                setState(() {
                                  _rememberMe = !_rememberMe;
                                });
                              },
                            ),
                          ),
                          Text(
                            'remember me',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Forgot Password!',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                ButtonLogIn('OK', clickOk),
                Stack(
                  alignment: Alignment.centerLeft,

                  children: <Widget>[
                    GestureDetector(

                      child: Container(
                          width: _screenWidth *0.7,
                          height: _screenHeight / 15,
                          child: CustomPaint(
                            painter: CurvePainterDown(),
                          )),
                      onTap: () {
                        goCreateAccount();
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
    /*
    try {
      if(pr.isShowing())
        pr.hide();
      await  pr.show();



      final _user = await _auth.signInWithEmailAndPassword(
          email: EmailTextField.getEmail(),
          password: PasswordTextField.getPassword());
      if (_user != null) Navigator.pushNamed(_context, HomePage.id);
    } catch (e) {
      pr.hide();
      print(e);
    }

     */
    Navigator.pushNamed(_context, HomePage.id);
  }

  void goCreateAccount() {
    Navigator.pushNamed(_context, CreateAccount.id);
  }

}

double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
double _screenWidth = WidgetsBinding.instance.window.physicalSize.width;
double _screenHeight = WidgetsBinding.instance.window.physicalSize.height;
bool _rememberMe = true;

BuildContext _context;
