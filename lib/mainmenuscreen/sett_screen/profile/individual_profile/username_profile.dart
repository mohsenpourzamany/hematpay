import 'package:flutter/material.dart';

class UserNameProfile extends StatelessWidget {
  const UserNameProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'نام کاربری',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'vazir'),
            ),
            Text(
              ' : ',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'vazir'),
            ),
            Text(
              'حامد ۰۰۱ ',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'vazir'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
