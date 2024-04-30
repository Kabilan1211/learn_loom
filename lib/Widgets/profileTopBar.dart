// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learn_loom/Widgets/activeStatus.dart';

class ProfileTopBar extends StatefulWidget {
  const ProfileTopBar({super.key});

  @override
  State<ProfileTopBar> createState() => _ProfileTopBarState();
}

class _ProfileTopBarState extends State<ProfileTopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "NAME",
                            style: TextStyle(),
                          ),
                          ActivityState()
                        ],
                      ),
                      Text(
                        "@username",
                        style: TextStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Follower",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 15),
                      ),
                      Text(
                        "125",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Roboto'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Favorites",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 15),
                      ),
                      Text(
                        "275",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Roboto'),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
