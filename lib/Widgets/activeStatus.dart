// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/constant.dart';
class ActivityState extends StatefulWidget {
  const ActivityState({super.key});

  @override
  State<ActivityState> createState() => _ActivityStateState();
}

class _ActivityStateState extends State<ActivityState> {
  @override
  Widget build(BuildContext context) {
    if (activityState) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 5,),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        ),
        SizedBox(width: 5,),

      ]);
    } else {
      return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(width: 5,),

        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 5,
        ),
        SizedBox(width: 5,),
      ]);
    }
  }
}
