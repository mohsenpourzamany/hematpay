import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          'HEMATPAY CARD',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const Text(
          'کیف پول اصلی ',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        const Text(
          '  موجودی اکانت شما ',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        const Text(
          '۱۷.۵۹۲ ',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        const Text(
          ('\u0024'),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
