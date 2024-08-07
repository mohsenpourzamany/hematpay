import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                    return const SettingPage();
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
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 4),
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'تنظیمات',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'vazir'),
        ),
      ],
    );
  }
}
