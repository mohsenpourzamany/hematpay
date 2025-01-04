import 'package:flutter/material.dart';

class IdNumberProfile extends StatelessWidget {
  const IdNumberProfile({super.key});

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
              'آی دی نامبر',
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
              '۱۴۰۱۲۳۴۶۷۸۵۴',
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
