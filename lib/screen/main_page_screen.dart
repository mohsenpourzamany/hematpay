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
                      margin:
                          const EdgeInsets.only(top: 240, right: 25, left: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(248, 203, 203, 203),
                        ),
                      ),
                      child: const Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'کلمه مورد نظر را وارد کنید',
                                style: TextStyle(
                                  fontFamily: 'vazir',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(248, 184, 184, 184),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 300),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 35, right: 25),
                        child: MainMenuScreen(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 520),
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
