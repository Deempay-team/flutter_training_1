import 'package:flutter/material.dart';

class Transferpage extends StatefulWidget {
  const Transferpage({super.key});

  @override
  State<Transferpage> createState() => _TransferpageState();
}

class _TransferpageState extends State<Transferpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer Page'),
      ),
    );
  }
}
