import 'package:flutter/material.dart';

class Makecard extends StatefulWidget {
  const Makecard({super.key});

  @override
  State<Makecard> createState() => _MakecardState();
}

class _MakecardState extends State<Makecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  '1404 0101 0011 1234',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'AF',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(),
            const Row(
              children: [
                Text(
                  '720000005001',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  ' : شماره حساب',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(),
            const Row(
              children: [
                Text(
                  '1.000.000',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  ' : موجودی حساب',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return Signup();
                // }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(140, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'صورتحساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
