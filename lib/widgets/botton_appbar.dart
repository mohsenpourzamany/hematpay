import 'package:flutter/material.dart';

class BottonAppBar extends StatefulWidget {
  const BottonAppBar({super.key});

  @override
  State<BottonAppBar> createState() => _BottonAppBarState();
}

class _BottonAppBarState extends State<BottonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
