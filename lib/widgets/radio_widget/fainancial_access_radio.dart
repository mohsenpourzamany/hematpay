import 'package:flutter/material.dart';

enum SingingCharacter { two, five, ten }

class FinancialAccessRadio extends StatefulWidget {
  const FinancialAccessRadio({super.key});

  @override
  State<FinancialAccessRadio> createState() => _FinancialAccessRadioState();
}

class _FinancialAccessRadioState extends State<FinancialAccessRadio> {
  SingingCharacter? _character = SingingCharacter.two;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('تا مبلغ ۲۰۰۰ دلار'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.two,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('تا مبلغ ۵۰۰۰ دلار'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.five,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('تا مبلغ ۱۰.۰۰۰ دلار'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.ten,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
