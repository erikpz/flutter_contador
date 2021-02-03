import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(41, 50, 65, 1),
          title: Center(
            child: Text('Contador'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Contador:', style: TextStyle(fontSize: 25.0)),
              Text('$counter', style: TextStyle(fontSize: 30.0))
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.exposure_zero),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ],
        ));
  }
}
