import 'package:flutter/material.dart';

class EuroRate extends StatefulWidget {
  const EuroRate({super.key});

  @override
  State<EuroRate> createState() => _EuroRateState();
}

class _EuroRateState extends State<EuroRate> {
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
                'یورو',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۷۵.۴',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۷۶.۴',
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
