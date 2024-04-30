// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Pages/home.dart';

class Tile extends StatefulWidget {
  const Tile({super.key, required this.title, required this.icon, required this.page});
  final String title;
  final Widget icon;
  final Widget page;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {

  final TextDecor textDecor = TextDecor();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      title: Text(
        widget.title,
        style: textDecor.blackBold(),
      ),
      leading: widget.icon,
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> widget.page));
      },
    );
  }
}

class Tile2 extends StatefulWidget {
  const Tile2({super.key, required this.title, this.function, this.trialing, this.TextColor});
  final String title;
  final Color? TextColor;
  final Widget? function;
  final Widget? trialing;

  @override
  State<Tile2> createState() => _Tile2State();
}

class _Tile2State extends State<Tile2> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(widget.title, style: TextStyle(
          color: widget.TextColor ?? Colors.black,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400
        ),),
      ),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> widget.function ?? const MyHomePage()));
      },
      trailing: widget.trialing,
    );
  }
}