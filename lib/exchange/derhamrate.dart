import 'package:flutter/material.dart';

class DerhamRate extends StatefulWidget {
  const DerhamRate({super.key});

  @override
  State<DerhamRate> createState() => _DerhamRateState();
}

class _DerhamRateState extends State<DerhamRate> {
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
                'درهم',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۲۰.۲  ',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '۲۱.۲ ',
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
