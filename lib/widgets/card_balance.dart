import 'dart:ui';

import 'package:flutter/material.dart';

class CardBalance extends StatefulWidget {
  const CardBalance({super.key});

  @override
  State<CardBalance> createState() => _CardBalanceState();
}

class _CardBalanceState extends State<CardBalance> {
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
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
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
                    margin: const EdgeInsets.only(left: 90, top: 25),
                    child: const Text(
                      'HEMATPAY CARD',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60, top: 10),
                    child: const Text(
                      '135719780000',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60, top: 5),
                    child: const Text(
                      '1357 1978 0011 1234',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 100, top: 7),
                    child: const Text(
                      '  موجودی اکانت شما ',
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black45,
                          fontFamily: 'vazir',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 60),
                        child: const Text(
                          '17,592',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(240, 255, 255, 255),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        ('\u0024'),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(240, 255, 255, 255)),
                      ),
                    ],
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
