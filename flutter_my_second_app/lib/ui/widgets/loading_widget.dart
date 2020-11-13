import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoadingCircle extends StatefulWidget {


  @override
  _LoadingCircleState createState() => _LoadingCircleState();
}

class _LoadingCircleState extends State<LoadingCircle> {
  static bool  _isLoading;
  Widget showCircularProgress() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
  @override
  Widget build(BuildContext context) {
    return showCircularProgress();
  }
}
