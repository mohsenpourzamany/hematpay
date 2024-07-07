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
          margin: const EdgeInsets.only(top: 30, right: 70),
          child: const Image(
            width: 250,
            image: AssetImage(
              'assets/images/goldcredit.png',
            ),
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
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
                    margin: const EdgeInsets.only(right: 85, top: 10),
                    child: const Text(
                      'HEMATPAY CARD',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60, top: 20),
                    child: const Text(
                      '135719780000',
                      style: TextStyle(fontSize: 17, color: Colors.black38),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    child: const Text(
                      '1357 1978 0011 1234',
                      style: TextStyle(fontSize: 17, color: Colors.black38),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 120),
                    child: const Text(
                      '  موجودی اکانت شما ',
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
                          '17,592',
                          style: TextStyle(fontSize: 17, color: Colors.black54),
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
                            color: Colors.black54),
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
