// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Pages/Navbar/inbox.dart';
import 'package:learn_loom/Pages/navBar.dart';
import 'package:learn_loom/Widgets/container.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

bool overlay = false;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextDecor textDecor = TextDecor();
  
  void pageRouter(Widget route) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => route));
  }

  String page = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          "HOME",
          style: textDecor.blackBold(),
        ),
        centerTitle: true,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const NavBar(),
      body: ListView(
        children: [SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0,0),
                      child: Text("DASHBOARD", style: const TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width *0.765,),
                  ],
                ), // End of the first line
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        HomeContainer(title: "Earnings", subTitle: "80K", icon: Icon(Icons.currency_rupee),),
                        const SizedBox(height: 20,),
                        HomeContainer(title: "Finished", subTitle: "58", icon: Icon(Icons.keyboard_double_arrow_up),),
                        const SizedBox(height: 20,),
                        HomeContainer(title: "Ratings", subTitle: "4.5",icon: Icon(Icons.rate_review_rounded),)
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Mycard(title: "Pending Projects", number: "5"),
                    const SizedBox(width: 20,),
                    Mycard(title: "Active Projects", number: "2"),
                    const SizedBox(width: 20,),
                    Mycard(title: "Response", number: "90%"),
                  ],
                ),
              ),
              Divider(color: Colors.black,),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("INBOX  (3/5)", style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
                  ),
                  Inbox(),
                  SizedBox(height: 5,),
                  Inbox(),
                  SizedBox(height: 5,),
                  Inbox()
                    ],
                  ),
                ),
              ),
              ],
            ),
          ),
          ),
      ]),
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.grey.shade200,
        fabColors: [Colors.white, Colors.white],
        fabIcon: Icon(
          Icons.add,
          color: Colors.black,
        ),
        buttonColor: Colors.black,
        buttonSelectedColor: Colors.black,
        buttonData: [
          PandaBarButtonData(id: 'Home', icon: Icons.home),
          PandaBarButtonData(id: 'Explore', icon: Icons.explore),
          PandaBarButtonData(id: 'Message', icon: Icons.plagiarism_outlined),
          PandaBarButtonData(id: 'Profile', icon: Icons.person)
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddButton()));
        },
      ),
    );
  }
}


class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  TextDecor textDecor = TextDecor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          "HOME",
          style: textDecor.blackBold(),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            IconButton(onPressed: (){
          }, icon: Icon(Icons.back_hand, color: Colors.black,)
          ),
          ],
        ),
      ),
    );
  }
}