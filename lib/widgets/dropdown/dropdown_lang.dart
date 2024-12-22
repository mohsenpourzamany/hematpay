import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Choose Language',
  'Farsi',
  'Pashto',
  'English',
  'Arabic',
  'turkish'
];

class DropdownLang extends StatefulWidget {
  const DropdownLang({super.key});

  @override
  State<DropdownLang> createState() => _DropdownLangState();
}

class _DropdownLangState extends State<DropdownLang> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Color.fromARGB(255, 2, 2, 2),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Color.fromARGB(255, 6, 6, 6),
          fontSize: 16,
          fontWeight: FontWeight.w700),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 9, 9, 9),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
