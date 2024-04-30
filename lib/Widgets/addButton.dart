// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class AddButtonPage extends StatefulWidget {
  const AddButtonPage({super.key});

  @override
  State<AddButtonPage> createState() => _AddButtonPageState();
}

class _AddButtonPageState extends State<AddButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width*0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("MY TEMPLATE", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'Roboto'),),
                      SizedBox(height: MediaQuery.of(context).size.height/10,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.create, size: 50,))
                    ],
                  ),
                ),
                const SizedBox(width: 30,),
                Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("MY TEMPLATE", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'Roboto'),),
                      SizedBox(height: MediaQuery.of(context).size.height/10,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.create, size: 50,))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}