import 'package:flutter/material.dart';

import 'screens/cv_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CVViewPage(),
    );
  }
}

