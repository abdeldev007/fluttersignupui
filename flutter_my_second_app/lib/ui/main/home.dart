  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/ABDALLAH%20ID%20LAHCEN/Android%20Studio/Flutter%20Projects/flutter_my_second_app/lib/ui/registeration/create_account.dart';
import 'package:fluttermysecondapp/ui/profile/login_screen.dart';
import 'package:fluttermysecondapp/ui/widgets/paint_shape.dart';
 import 'package:progress_dialog/progress_dialog.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // final _auth = FirebaseAuth.instance;
  //FirebaseUser currentUser;
  ProgressDialog pr;
 //final _firestore =Firestore.instance ;
  @override
  void initState() {
    super.initState();
    getCurrentUser();

  }

  @override
  void dispose() {
    super.dispose();
    //  currentUser = null;
  }

  void getCurrentUser() async {
 /*   try {
      currentUser = await _auth.currentUser();
      print('hello ' + currentUser.displayName);
      if (currentUser != null)
        print('hello ' + currentUser.displayName);
      else
        Navigator.pushNamed(context, CreateAccount.id);
      getData();
    } catch (e) {
      print(e);
    }

  */
  }

  final List<Color> tileColors = [
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.indigo,
    Colors.lightBlue,
    Colors.amber,
    Colors.deepOrange,
    Colors.red,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
       pr = ProgressDialog(context,
         type: ProgressDialogType.Normal, isDismissible: false, showLogs: true);

    return MaterialApp(
      title: '',
      home: Scaffold(
        // backgroundColor: Color(0xFFa30000) ,

        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {

                 Navigator.pushNamed(context, Login.id);
              },
              icon: Icon(Icons.arrow_back),
            )
          ],
          backgroundColor: Color(0xFF0d47a1),
          title: Text('Quizers'),
          elevation: 1,
        ),
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
                        height: _screenHeight / 10,
                        child: CustomPaint(
                          painter: CurvePainterSquare(),
                        ),
                      ),
                      Container(
                        width: _screenWidth,
                        height: _screenHeight / 10,
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.blue[600],
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                                'assets/images/logosaku.png'),

                          ),
                        ),

                      ),

                      Positioned(
                        bottom: 6.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          height: (_screenHeight / 10) * 0.6,
                          alignment: Alignment.centerLeft,
                          child:Text('currentUser',
                            style: TextStyle(
                                color:Colors.white
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void getData() {
  /*  _firestore.collection("users").document("j7NoemwlqfViVUJhgCey").snapshots().toList().then((value) => {
            value.forEach((f) => print('${f.data}}'))
    });


   */
  }
}

String img = '';

double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
double _screenWidth = WidgetsBinding.instance.window.physicalSize.width;
double _screenHeight = WidgetsBinding.instance.window.physicalSize.height;
bool _rememberMe = true;

BuildContext _context;

