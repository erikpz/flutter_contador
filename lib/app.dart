import 'package:flutter/material.dart';
import 'package:flutter_contador/pages/contador_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter app',
        home: ContadorPage());
  }
}
