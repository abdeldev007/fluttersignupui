import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final String text;

  static String _email;
  static String _username;

  static String getEmail() {
    return _email;
  }

  static String getUsername() {
    return _username;
  }

  final Icon icon;

  EmailTextField(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: showEmailInput(),
      ),
    );
  }

  Widget showEmailInput() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: text,
        icon: icon,
      ),
      onChanged: (value) {
        if(text.toLowerCase().contains('email'))
        _email = value;
        else
          _username=value ;
      },
      validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
      onSaved: (value) => _email = value.trim(),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  static String _password = '';

  static String getPassword() {
    return _password;
  }

  PasswordTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: showPasswordInput(),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        onChanged: (value) {
          _password = value;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: Colors.blue,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }
}

/* TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,


             // icon: Icon(_icon, color: Colors.blue),
              hintText: _text,
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
*/
