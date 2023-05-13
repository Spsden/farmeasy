import 'package:farmeasy/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,

       // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.black54),

      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        cardColor: HexColor('#0D47A1').withOpacity(0.4),




      ),
      home: const Home(),
    );
  }
}

