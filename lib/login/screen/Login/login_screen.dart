import 'package:flutter/material.dart';
import 'package:movie_app/login/screen/Login/login_form.dart';
import 'package:movie_app/login/widgets/curved_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff2cbd01), Color(0xfff4ced9)]),
        ),
        child: Stack(
          children: [
            CurvedWidget(
              curvedDistance: 80.0,
              curvedHeight: 80.0,
              child: Container(
                padding: EdgeInsets.only(top: 100, left: 60),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white.withOpacity(0.4)]),
                ),
                child: Text('Login', style: TextStyle(fontSize: 40,color: Color(0xff6a515e)),),
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 230),
                child: LoginForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
