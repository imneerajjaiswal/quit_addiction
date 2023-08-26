import 'package:flutter/material.dart';
import 'package:quite_addiction/screen/Home_Page.dart';

void main() {
  runApp(const NOFAP());
}

class NOFAP extends StatelessWidget {
  const NOFAP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorLight: const Color(0xFF2596be)),
      home: const HomePage(),
    );
  }
}
