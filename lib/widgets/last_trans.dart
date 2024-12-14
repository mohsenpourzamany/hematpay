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
        margin: const EdgeInsets.only(top: 25, bottom: 35),
        child: Column(
          children: [
            const Row(
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
                  color: Colors.white,
                  AssetImage(
                    'assets/icon/trans.png',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: const Row(
                        children: [
                          Text(
                            '750',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
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
                                fontWeight: FontWeight.w700,
                                fontFamily: 'vazir',
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'واریز به اکانت',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 213, 213, 213),
                          ),
                        ),
                        ImageIcon(
                          color: Colors.white,
                          AssetImage('assets/icon/depositarrow.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 85,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const Text(
                        'شارژ کیف پول اصلی  ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'vazir',
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Mar 14,2024 at 2:30am',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 213, 213, 213)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
