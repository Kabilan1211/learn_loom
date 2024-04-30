// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TeachesPage extends StatefulWidget {
  const TeachesPage({super.key});

  @override
  State<TeachesPage> createState() => _TeachesPageState();
}

class _TeachesPageState extends State<TeachesPage> {
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