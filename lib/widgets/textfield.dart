import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String hintText;
  

  const MyTextField({Key key, this.label, this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: label, border: OutlineInputBorder(), hintText: hintText),
      validator: (v) {
        if (v.isEmpty)
          return 'Cannot be empty';
        else
          return null;
      },
    //  autovalidate: true,
    );
  }
}

class MyButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyButton({Key key, this.scaffoldKey, String name, Null Function() onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        // side: BorderSide(color: Colors.red)
      ),
      color: Colors.orangeAccent,
      child: Text('Login'),
      onPressed: () {
        scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text('You have pressed login'),
        ));
      },
    );
  }
}
