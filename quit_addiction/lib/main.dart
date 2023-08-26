import 'package:flutter/material.dart';
import 'package:quite_addiction/screen/Home_Page.dart';

void main() {
  runApp(const QUITADDICTION());
}

class QUITADDICTION extends StatelessWidget {
  const QUITADDICTION({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorLight: const Color(0xFF2596be)),
      home: const HomePage(),
    );
  }
}
