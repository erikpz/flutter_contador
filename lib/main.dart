import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Contador flutter'),
            ),
            backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          ),
        ));
  }
}
