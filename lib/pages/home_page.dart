import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter :D"),
        ),
        body: _body());
  }

  _body() {
    return Container(
        color: Colors.white,
        child: SizedBox.expand(
          child: _img(),
        )
    );
  }

  _text() {
    return Text("Hello\nWORLD!",
        style: TextStyle(
          fontSize: 50,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dashed,
        )
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
      fit: BoxFit.contain,
    );
  }
}
