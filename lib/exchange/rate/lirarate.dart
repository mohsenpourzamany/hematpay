import 'package:flutter/material.dart';

class LiraRate extends StatefulWidget {
  const LiraRate({super.key});

  @override
  State<LiraRate> createState() => _LiraRateState();
}

class _LiraRateState extends State<LiraRate> {
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
                'لیر',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '  ۲۰.۲',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۲۱.۲',
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
