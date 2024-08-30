import 'package:flutter/material.dart';
import 'package:hematpay/screen/signin.dart';

class FundsBox extends StatelessWidget {
  const FundsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  color: const Color.fromARGB(255, 123, 123, 123)
                      .withOpacity(0.25),
                  spreadRadius: 4,
                  blurRadius: 50)
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Signin();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              // minimumSize: const Size(45, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 4),
              child: ImageIcon(AssetImage('assets/icon/fundsbox.png')),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'بورس',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'vazir',
              color: Color.fromARGB(255, 233, 233, 233)),
        ),
      ],
    );
  }
}
