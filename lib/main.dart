import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 1;

  void playDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: const Text("Random Dice App"),
        ),
        body: SafeArea(
            child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: playDice,
                  child: Image.asset("assets/images/dice$leftDice.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: playDice,
                  child: Image.asset("assets/images/dice$rightDice.png"),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
