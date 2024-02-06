import 'package:flutter/material.dart';
import 'package:instapay/features/HomeScreen.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Text(
                "1200",
                style: TextStyle(color: Colors.orange, fontSize: 50),
              ),
              Text(
                '   EGP',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                label: const Text(
                  'CVV',
                  style: TextStyle(color: Colors.white70),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white70),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white70))),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.white,
                  content: Text(
                    'Done',
                    style: TextStyle(color: Colors.black),
                  )));
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange),
              child: const Center(
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
