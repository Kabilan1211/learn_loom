// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key, required this.title, required this.subTitle, required this.icon});
  final String title;
  final String subTitle;
  final Widget icon;

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 2,
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width*0.2,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              const SizedBox(width: 10,),
              widget.icon,
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.title, softWrap: true, style: const TextStyle(fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),),
                    Text(widget.subTitle, style: const TextStyle(fontSize: 18, fontFamily: 'Roboto'),), 
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

class Mycard extends StatefulWidget {
  const Mycard({super.key, required this.title, required this.number});
  final String title;
  final String number;

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width*0.225,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade50
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text(widget.title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Roboto'),),
              const SizedBox(height: 40,),
              Text(widget.number, style: const TextStyle(color: Colors.black, fontSize: 50, fontFamily: 'Roboto'),)
            ],
          ),
        ),
        onTap: (){},
        ),
      
    );
  }
}