import 'dart:ui';

import 'package:flutter/material.dart';

class MainCardBalance extends StatefulWidget {
  const MainCardBalance({super.key});

  @override
  State<MainCardBalance> createState() => _MainCardBalanceState();
}

class _MainCardBalanceState extends State<MainCardBalance> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const Image(
            width: 400,
            image: AssetImage(
              'assets/images/maincredit.png',
            ),
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              height: 160,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 90, top: 15),
                    child: const Text(
                      'صندوق اصلی همت پی',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                    margin: const EdgeInsets.only(
                      top: 70,
                      left: 15,
                    ),
                    child: const Row(
                      children: [
                        Text(
                          '8,517,592',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'vazir',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          ('\u0024'),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'vazir',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
