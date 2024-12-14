import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/main_menu_screen.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/last_trans.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 170, 108, 67),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 16, 6, 1),
                      Color.fromARGB(255, 46, 19, 2),
                      Color.fromARGB(0, 65, 46, 40),
                      Color.fromARGB(255, 17, 8, 0)
                    ],
                  ),
                ),
                child: const Column(
                  children: [
                    CardBalance(),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 20),
                      child: MainMenuScreen(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35, right: 25),
                      child: LastTrans(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
