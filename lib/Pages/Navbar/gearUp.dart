// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GearUP extends StatefulWidget {
  const GearUP({super.key});

  @override
  State<GearUP> createState() => _GearUPState();
}

class _GearUPState extends State<GearUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}