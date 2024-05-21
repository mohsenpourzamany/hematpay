// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                width: double.infinity,
                image: AssetImage('assets/images/sbg.jpg'),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/Ellipse.png'),
                    ),
                    Column(
                      children: [
                        Text('سلام حامد '),
                        Text('به همت پی خوش آمدی'),
                      ],
                    ),
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/notification-red.png'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
