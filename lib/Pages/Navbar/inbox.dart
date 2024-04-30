// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Colors.black,
      child: InkWell(
        child: Container(
          height: 75,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Text("Request From Kabilan", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Roboto')),
                    SizedBox(width: 20),
                    Text("DSP", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Roboto')),
                    SizedBox(width: 20),
                    Text("Active Low Pass Filters", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Roboto')),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.white,surfaceTintColor: Colors.white), child: Row(
                    children: [
                      Text("Accept", style: TextStyle(color: Colors.black, fontFamily: 'Roboto')),
                      Icon(Icons.one_k, color: Colors.blue,),
                    ],
                  )),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.white, surfaceTintColor: Colors.white), child: Row(
                    children: [
                      Text("Delete", style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),),
                      Icon(Icons.delete, color: Colors.red,),
                    ],
                  )),
                  SizedBox(width: 10,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
