import 'package:flutter/material.dart';

String email = "";
String password = "";
String savedEmail = "";
String savedPassword = "";

bool darkThemeTrue = false;
bool activityState = false;
bool profileState = false;
bool outOfTeach = false;

Map<String,double> heightWidth(BuildContext context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return {
    'Height': height,
    'Width': width,
  };
}