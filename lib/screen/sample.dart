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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/Ellipse.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 57),
                      child: Column(
                        children: [
                          Text(
                            'سلام حامد ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'به همت پی خوش آمدی',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/notification-red.png'),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(212, 255, 255, 255),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffc4c4c4),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: Color.fromARGB(255, 123, 123, 123)
                                        .withOpacity(0.25),
                                    spreadRadius: 4,
                                    blurRadius: 50)
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: ImageIcon(
                                AssetImage('assets/icon/Arrow-Down.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'دریافت پول',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
