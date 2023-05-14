import 'package:flutter/material.dart';

class SchemesScreen extends StatefulWidget {
  const SchemesScreen({Key? key}) : super(key: key);

  @override
  State<SchemesScreen> createState() => _SchemesScreenState();
}

class _SchemesScreenState extends State<SchemesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.black,
      child: ListView(
        children: const [
        Text(
        "Government Policies",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
        ]
      ),
    );
  }
}
