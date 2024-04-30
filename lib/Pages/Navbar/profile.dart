// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn_loom/Widgets/profileTopBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: const Text("PROFILE", style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.bold, letterSpacing: 2),),
          centerTitle: true,
          shadowColor: Colors.black,
          bottom: const TabBar(
            dividerColor: Colors.white,
            indicatorColor: Colors.black,
            isScrollable: false,
            indicator: BoxDecoration(
              color: Colors.black12,
            ),
            indicatorWeight: 1,
            indicatorSize: TabBarIndicatorSize.tab,
            automaticIndicatorColorAdjustment: true,
              tabs: [
                Tab(icon: Text("Profile", style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 20, letterSpacing: 1),)),
                Tab(icon: Text("Request Information", style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 20, letterSpacing: 1)),),
                Tab(icon: Text("Review", style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 20, letterSpacing: 1))),
              ],
            ),
        ),
        body: const TabBarView(
          children: [
            Profile(),
            Teach(),
            Reviews()
          ]),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ProfileTopBar(),
          Divider(color: Colors.black87,),
          const SizedBox(height: 10,),
          Text("Contents to be listed in tile"),
          ListTile(
            title: Text("Welcome"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Welcome"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Welcome"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Welcome"),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

class Teach extends StatefulWidget {
  const Teach({super.key});

  @override
  State<Teach> createState() => _TeachState();
}

class _TeachState extends State<Teach> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ProfileTopBar(),
          Divider(color: Colors.black,),
          Text("Hello, this is Teach page", style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ProfileTopBar(),
          Divider(color: Colors.black),
          Text("Hello, this is review page", style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}