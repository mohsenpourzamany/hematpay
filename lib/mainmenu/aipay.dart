import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/aipay/aipay_list.dart';

class AIPay extends StatelessWidget {
  const AIPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                    return const AiPayList();
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
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 1),
              child: Icon(
                color: Color(0xff111111),
                Icons.payments_outlined,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        const Text(
          'پرداخت ',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'vazir',
              color: Color.fromARGB(255, 233, 233, 233)),
        ),
        const Text(
          'هوشمند ',
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
