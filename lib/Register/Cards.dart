import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            'Enter Card Number',
            style: TextStyle(color: Colors.white),
          )
        ],
      )),
    );
  }
}
