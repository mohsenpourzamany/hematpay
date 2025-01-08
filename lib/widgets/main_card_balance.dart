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
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      child: Stack(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 60, top: 25),
            child: const Image(
              width: 280,
              image: AssetImage(
                'assets/images/maincredit.png',
              ),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                height: 160,
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 65, vertical: 30),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 10),
                      child: const Text(
                        'HEMATPAY',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 3, top: 44),
                      child: const Text(
                        '1404 0101 0011 1234',
                        style: TextStyle(
                            fontFamily: 'OCRAEXT',
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(240, 255, 255, 255)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 2),
                      child: const Text(
                        'AF140401010000720000005001',
                        style: TextStyle(
                            fontFamily: 'OCRAEXT',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(240, 255, 255, 255)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 60, top: 1),
                      child: const Row(
                        children: [
                          Text(
                            ('\u0024'),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(240, 255, 255, 255)),
                          ),
                          Text(
                            ' 8,265,496',
                            style: TextStyle(
                                fontFamily: 'OCRAEXT',
                                fontSize: 18,
                                color: Color.fromARGB(240, 255, 255, 255),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '    موجودی',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(240, 255, 255, 255),
                                fontFamily: 'vazir',
                                fontWeight: FontWeight.w600),
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
      ),
    );
  }
}
