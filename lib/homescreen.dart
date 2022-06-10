// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'background.dart';
import 'gamescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> guessed_cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          
            Container(
                alignment: Alignment.center,
                child: Image.asset('UI/logo.png', height: 440)),
            SizedBox(height: 10),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  minimumSize: Size(160, 80),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameScreen(guessed_cards),
                      ));
                },
                child: const Text(
                  'START',
                  style: TextStyle(fontFamily: 'Boogaloo-Regular', fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      )
    ]);
  }
}
