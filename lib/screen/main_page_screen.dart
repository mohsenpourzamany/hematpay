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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/slbg.jpg'),
            ),
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Color(0xffFFDA93),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: const CardBalance()),
                    Container(
                      margin: const EdgeInsets.only(top: 240),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 25, right: 20),
                        child: MainMenuScreen(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 490),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 35, right: 25),
                        child: LastTrans(),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
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
