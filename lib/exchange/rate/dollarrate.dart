import 'package:flutter/material.dart';

class DollarRate extends StatefulWidget {
  const DollarRate({super.key});

  @override
  State<DollarRate> createState() => _DollarRateState();
}

class _DollarRateState extends State<DollarRate> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'دلار',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۷۱.۴',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۷۲.۴',
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
