import 'package:flutter/material.dart';

import 'Views/login.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: Login(title: 'Quantify'),
      debugShowCheckedModeBanner: false,
    );
  }
}
