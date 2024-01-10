import 'package:flutter/material.dart';

class workOutScreen extends StatefulWidget {
  const workOutScreen({super.key});

  @override
  State<workOutScreen> createState() => _workOutScreenState();
}

class _workOutScreenState extends State<workOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Workout Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
