// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/constant.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Widgets/listTile.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final TextDecor textDecor = TextDecor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SETTINGS",
          style: TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        shadowColor: Colors.black,
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Tile2(title: "Notifications"),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Tile2(title: "Notifications Sound"),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Tile2(
                  title: "Currency",
                  trialing: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Tile2(title: "Terms of service"),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Tile2(title: "Privacy Policy"),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Container(
                  width: MediaQuery.of(context)
                      .size
                      .width, // Ensuring the Container takes the full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors
                        .transparent, // Setting background color here instead
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: ListTile(
                        tileColor: Colors.transparent, // No need for tileColor
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Dark Theme",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        trailing: Switch(
                            value: darkThemeTrue,
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade600,
                            trackOutlineColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            activeColor: Colors.black,
                            onChanged: (val) {
                              setState(() {
                                darkThemeTrue = val;
                              });
                            }),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Container(
                  width: MediaQuery.of(context)
                      .size
                      .width, // Ensuring the Container takes the full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors
                        .transparent, // Setting background color here instead
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: ListTile(
                        tileColor: Colors.transparent, // No need for tileColor
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Out of Teach Mode",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        trailing: Switch(
                            value: outOfTeach,
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade600,
                            trackOutlineColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            activeColor: Colors.black,
                            onChanged: (val) {
                              setState(() {
                                outOfTeach = val;
                              });
                            }),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                Tile2(title: "Log Out", TextColor: Colors.red,),
                Divider(
                  color: Colors.black,
                  endIndent: 10,
                  indent: 10,
                ),
                const SizedBox(height: 10,), 
                Text("Version 2.0", style: TextStyle(color: Colors.grey.shade600, fontSize: 15),)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
