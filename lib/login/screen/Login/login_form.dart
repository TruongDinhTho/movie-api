import 'package:flutter/material.dart';
import 'package:movie_app/login/widgets/gradient_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "Email",
                ),
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.always,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password"
                ),
                obscureText: true,
               autovalidateMode: AutovalidateMode.always,
              ),
              SizedBox(height: 30),
              GradientButton(
                width: 150,
                height: 45,
                onPressed: (){},
                text: Text('Login',style: TextStyle(color: Colors.black),),
                icon: Icon(Icons.arrow_forward, color: Colors.black,),
              ),
              SizedBox(height: 10),
              GradientButton(
                width: 150,
                height: 45,
                onPressed: (){},
                text: Text('Register',style: TextStyle(color: Colors.black),),
                icon: Icon(Icons.arrow_forward, color: Colors.black,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}