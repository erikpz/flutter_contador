import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  int counter = 0;
  final _txtSty1 =
      TextStyle(color: Color.fromRGBO(61, 90, 128, 1), fontSize: 26);
  final _btnSty = Color.fromRGBO(152, 193, 217, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(224, 251, 252, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(41, 50, 65, 1),
          title: Center(
            child: Text('Counter', style: TextStyle(fontSize: 23)),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Count:', style: _txtSty1),
              Text('$counter', style: _txtSty1)
            ],
          ),
        ),
        floatingActionButton: _buttonsContainer());
  }

  Widget _buttonsContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          backgroundColor: _btnSty,
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: _btnSty,
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              counter--;
            });
          },
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: _btnSty,
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      ],
    );
  }
}
