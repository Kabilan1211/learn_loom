// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextDecor{
TextStyle whiteBold(){
 return const TextStyle(
  letterSpacing: 2,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: "Roboto"
  );
}
TextStyle indigoBold(){
 return const TextStyle(
  letterSpacing: 2,
  color: Colors.indigo,
  fontWeight: FontWeight.bold,
  fontFamily: "Roboto"
  );
}
TextStyle blackBold(){
 return const TextStyle(
  letterSpacing: 2,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: "Roboto"
  );
}
}