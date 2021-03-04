import 'package:flutter/material.dart';

main() {
  runApp(Taskit());
}

class Taskit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TASK it.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff4361EE),
      ),
    );
  }
}
