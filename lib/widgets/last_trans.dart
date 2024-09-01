import 'package:flutter/material.dart';

class LastTrans extends StatefulWidget {
  const LastTrans({super.key});

  @override
  State<LastTrans> createState() => _LastTransState();
}

class _LastTransState extends State<LastTrans> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: const EdgeInsets.only(top: 70, bottom: 25),
        child: const Column(
          children: [
            Row(
              children: [
                Text(
                  'آخرین تراکنش ها ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'vazir',
                      color: Colors.white),
                ),
                ImageIcon(
                  AssetImage(
                    'assets/icon/trans.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '750',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir',
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          ('\u0024'),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'واریز به اکانت',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 213, 213, 213),
                          ),
                        ),
                        ImageIcon(
                          AssetImage('assets/icon/depositarrow.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    Text(
                      'شارژ کیف پول اصلی  ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'vazir',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Mar 14,2024 at 2:30am',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 213, 213, 213)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
