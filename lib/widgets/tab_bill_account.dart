import 'package:flutter/material.dart';

class TabBillAccount extends StatelessWidget {
  const TabBillAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.fromBorderSide(
          BorderSide(
            color: Color(0xffc1c1c1),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 25),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '1Y',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 25),
                backgroundColor: const Color.fromARGB(255, 254, 254, 254),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '6M',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 25),
                backgroundColor: const Color.fromARGB(255, 254, 254, 254),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '3M',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 25),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '1M',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
