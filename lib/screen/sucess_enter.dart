// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';

class SuccessEnter extends StatelessWidget {
  const SuccessEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' ورود موفق '),
      ),
      body: Container(
        color: Color.fromARGB(255, 170, 108, 67),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 120, top: 50),
              child: Image(
                image: AssetImage('assets/images/credit3.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 120, top: 150),
              child: Image(
                image: AssetImage('assets/images/credit2.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200, top: 235),
              child: Image(
                image: AssetImage('assets/images/credit1.png'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 16, 6, 1),
                    Color.fromARGB(255, 46, 19, 2),
                    const Color.fromARGB(0, 65, 46, 40),
                    Color.fromARGB(255, 17, 8, 0)
                  ],
                ),
              ),
              child: Column(
                children: [
                  Image(
                    width: 240,
                    image: AssetImage('assets/images/Logoo.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: 100,
                          child: Image(
                            color: Colors.brown,
                            image: AssetImage('assets/images/Tick.png'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'ورود شما با موفقیت انجام شد ',
                          style: TextStyle(
                            fontFamily: 'vazir',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return MainScreen();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(280, 43),
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              'ورود به صفحه اصلی',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'vazir',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
