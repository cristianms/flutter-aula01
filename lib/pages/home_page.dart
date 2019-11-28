import 'package:aula01/pages/hello_listview.dart';
import 'package:aula01/pages/hello_page1.dart';
import 'package:aula01/pages/hello_page2.dart';
import 'package:aula01/utils/nav.dart';
import 'package:aula01/widgets/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter :D"),
        ),
        body: _body(context));
  }

  _body(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _pageView(),
            _buttons(context),
          ],
        )
    );
  }

  Container _pageView() {
    return Container(
      height: 300,
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog1.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png"),
          _img("assets/images/dog4.png"),
          _img("assets/images/dog5.png"),
        ],
      ),
    );
  }

  Column _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("ListView", onPressed: () => _onClickNavigator(context, HelloListView()), color: Colors.red,),
            BlueButton("Page 2", onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton("Page 3", onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("Snack", onPressed: _onclickSnack),
            BlueButton("Dialog", onPressed: _onclickDialog),
            BlueButton("Toast", onPressed: _onclickToast),
          ],
        ),
      ],
    );
  }

  _onClickNavigator(BuildContext context, Widget page) async {
    String retorno = await push(context, page);
    print(">> $retorno");
  }

  _onclickDialog() {
  }

  _onclickToast() {
  }

  _onclickSnack() {
  }

  _text() {
    return Text("Hello WORLD!",
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

  _img(String urlImagem) {
    return Container(
      child: Image.asset(
        urlImagem,
        fit: BoxFit.contain,
      ),
    );
  }

}
