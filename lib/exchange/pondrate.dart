import 'package:flutter/material.dart';

class PondRate extends StatefulWidget {
  const PondRate({super.key});

  @override
  State<PondRate> createState() => _PondRateState();
}

class _PondRateState extends State<PondRate> {
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
                'پوند',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۲۰.۲',
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
