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
                      fontFamily: 'vazir'),
                ),
                ImageIcon(
                  AssetImage('assets/icon/trans.png'),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  '750',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'vazir'),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  ('\u0024'),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'vazir'),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'شارژ کیف پول اصلی  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'vazir'),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'واریز به اکانت',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 148, 148, 148),
                  ),
                ),
                ImageIcon(
                  AssetImage('assets/icon/depositarrow.png'),
                ),
                SizedBox(
                  width: 67,
                ),
                Text(
                  'Mar 14,2024 at 2:30am',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 148, 148, 148)),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
