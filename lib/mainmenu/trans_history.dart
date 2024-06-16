import 'package:flutter/material.dart';

class TransHistory extends StatelessWidget {
  const TransHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffc4c4c4),
            ),
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
          child: const Padding(
            padding: EdgeInsets.all(21.0),
            child: ImageIcon(AssetImage('assets/icon/Calendar.png')),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'تراکنش ها ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
