// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Pages/Navbar/about.dart';
import 'package:learn_loom/Pages/Navbar/coins.dart';
import 'package:learn_loom/Pages/Navbar/gearUp.dart';
import 'package:learn_loom/Pages/Navbar/inbox.dart';
import 'package:learn_loom/Pages/Navbar/myRequest.dart';
import 'package:learn_loom/Pages/Navbar/myTeaches.dart';
import 'package:learn_loom/Pages/Navbar/portfolio.dart';
import 'package:learn_loom/Pages/Navbar/profile.dart';
import 'package:learn_loom/Pages/Navbar/settings.dart';
import 'package:learn_loom/Widgets/activeStatus.dart';
import 'package:learn_loom/Widgets/listTile.dart';
import 'package:learn_loom/Constants/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final TextDecor textDecor = TextDecor();
  @override
  Widget build(BuildContext context) {
    if (profileState) {
      // Yes means teacher
      return Drawer(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        width: 290,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 175,
                  color: Colors.transparent,
                  child: ListView(
                    children: [
                      // const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            children: [
                            const SizedBox(width: 15,),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                          ),
                          const SizedBox(
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
                                        style: textDecor.blackBold(),
                                      ),
                                      ActivityState(),
                                    ],
                                  ),
                                   Text("@username", style: TextStyle(),)
                                ],
                              ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.edit, size: 20,)),
                            ],
                          ),
                      const SizedBox(height: 10,),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Teach Mode", style: textDecor.blackBold(),),
                          const SizedBox(width: 5,),
                          Switch(
                            value: profileState, 
                            onChanged: (val){
                              setState(() {
                              profileState = val;
                              });
                            },
                            inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.shade700,
                        trackOutlineColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                        activeColor: Colors.black,
                            )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "MY WIDGETS",
                    style: textDecor.blackBold(),
                  )),
                ),
                Tile(
                    title: "Coins",
                    page: const CoinsPage(),
                    icon: Image.asset(
                      "assets/images/coin-black.png",
                      height: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    page: const TeachesPage(),
                    title: "My Teach",
                    icon: Icon(
                      Icons.request_page,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Portfolio",
                    page: const PortfolioPage(),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    )),
               Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Gear Up",
                    page: const GearUP(),
                    icon: Icon(
                      Icons.get_app_rounded,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Inbox",
                    page: const InboxPage(),
                    icon: Icon(
                      Icons.inbox,
                      color: Colors.black,
                      size: 30,
                    )),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "PERSONAL INFORMATION",
                    style: textDecor.blackBold(),
                  )),
                ),
                Tile(
                  title: "My Profile",
                  page: const ProfilePage(),
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.9, // Ensuring the Container takes the full width
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
                        title: Text(
                          "Activity",
                          style: textDecor.blackBold(),
                        ),
                        trailing: Switch(
                            value: activityState,
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade600,
                            trackOutlineColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            activeColor: Colors.black,
                            onChanged: (val) {
                              setState(() {
                                activityState = val;
                              });
                            }),
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Settings",
                    page: const SettingPage(),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "About",
                    page: const AboutPage(),
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.black,
                    ))
              ],
            )
          ],
        ),
      );
    } else {
      return Drawer(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        width: 290,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 175,
                  color: Colors.transparent,
                  child: ListView(
                    children: [
                      // const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            children: [
                            const SizedBox(width: 15,),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                          ),
                          const SizedBox(
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
                                        style: textDecor.blackBold(),
                                      ),
                                      ActivityState(),
                                    ],
                                  ),
                                   Text("@username", style: TextStyle(),)
                                ],
                              ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.edit, size: 20,)),
                            ],
                          ),
                      const SizedBox(height: 10,),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Teach Mode", style: textDecor.blackBold(),),
                          const SizedBox(width: 5,),
                          Switch(
                            value: profileState, 
                            onChanged: (val){
                              setState(() {
                              profileState = val;
                              });
                            },
                            inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.shade700,
                        trackOutlineColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                        activeColor: Colors.black,
                            )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "MY WIDGETS",
                    style: textDecor.blackBold(),
                  )),
                ),
                Tile(
                    title: "Coins",
                    page: const CoinsPage(),
                    icon: Image.asset(
                      "assets/images/coin-black.png",
                      height: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    page: const RequestPage(),
                    title: "My Requests",
                    icon: Icon(
                      Icons.request_page,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Portfolio",
                    page: const PortfolioPage(),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    )),
               Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Gear Up",
                    page: const GearUP(),
                    icon: Icon(
                      Icons.get_app_rounded,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Inbox",
                    page: const InboxPage(),
                    icon: Icon(
                      Icons.inbox,
                      color: Colors.black,
                      size: 30,
                    )),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "PERSONAL INFORMATION",
                    style: textDecor.blackBold(),
                  )),
                ),
                Tile(
                  title: "My Profile",
                  page: const ProfilePage(),
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.9, // Ensuring the Container takes the full width
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
                        title: Text(
                          "Activity",
                          style: textDecor.blackBold(),
                        ),
                        trailing: Switch(
                            value: activityState,
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade600,
                            trackOutlineColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            activeColor: Colors.black,
                            onChanged: (val) {
                              setState(() {
                                activityState = val;
                              });
                            }),
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "Settings",
                    page: const SettingPage(),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    )),
                Divider(
                  color: Colors.black,
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                ),
                Tile(
                    title: "About",
                    page: const AboutPage(),
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.black,
                    ))
              ],
            )
          ],
        ),
      );
    }
  }
}
