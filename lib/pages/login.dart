import 'package:flutter/material.dart';
import 'package:martapp/constants/apptheme.dart';
import 'package:martapp/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  var _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 100,
                  //backgroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/logo.PNG"),
                 // child: Icon(Icons.shop),

                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    label: 'Username',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    label: 'Password',
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password')),
                Row(
                  children: [
                    Expanded(
                        child: MyButton(
                            name: 'Login',
                            scaffoldKey: _scaffoldKey,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {}
                            })),
                    SizedBox(width: 10),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: BorderSide(color: Colors.red)
                        ),
                        child: Text('Register'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
