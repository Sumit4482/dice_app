import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _nums = ["1", "2", "3", "4", "5", "6"];
  String disp = "1";

  _showRandomNum() {
    var intValue = Random().nextInt(6);
    disp = _nums[intValue];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.bottomCenter,
        //   end: Alignment.topLeft,
        //   colors: [
        //     Colors.blue,
        //     Colors.red,
        //   ],
        // ),
        color: Colors.deepPurpleAccent,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Center(
                  child: Text(
                    disp,
                    style: const TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("BUTTON CLICK");
                      setState(() {
                        _showRandomNum();
                      });
                    },
                    child: const Text(
                      "MY TURN",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
