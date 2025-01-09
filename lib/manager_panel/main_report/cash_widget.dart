import 'package:flutter/material.dart';

class CashWidget extends StatefulWidget {
  const CashWidget({super.key});

  @override
  State<CashWidget> createState() => _CashWidgetState();
}

class _CashWidgetState extends State<CashWidget> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '20,000',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'vazir',
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    ('\u0024'),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'vazir',
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'واریز نقدی ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                  ImageIcon(
                    color: Colors.green,
                    AssetImage('assets/icon/depositarrow.png'),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' شعبه 301 سند 2456',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'vazir',
                    color: Color.fromARGB(255, 107, 107, 107)),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Mar 14,2024 at 2:30am',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 107, 107, 107),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
