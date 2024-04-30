import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Pages/Navbar/coins.dart';

class Coins extends StatefulWidget {
  const Coins({super.key});

  @override
  State<Coins> createState() => _CoinsState();
}

class _CoinsState extends State<Coins> {
  final TextDecor textDecor = TextDecor();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CoinsPage()));
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: Container(
            height: 25,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/coin.png",
                ),
                Text(
                  "Coins: 0",
                  style: textDecor.blackBold(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
