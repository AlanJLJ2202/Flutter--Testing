import 'package:flutter/material.dart';

import 'package:testing/ui/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 2, 2, 2),
        primarySwatch: Colors.amber,
      ),
      home: PrincipalScreen()
    );
  }
}
