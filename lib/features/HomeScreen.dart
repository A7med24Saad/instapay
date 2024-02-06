import 'package:flutter/material.dart';
import 'package:instapay/Register/BankAccount.dart';
import 'package:instapay/features/Accountinfo.dart';
import 'package:instapay/features/Bills.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: PopupMenuButton(
            iconColor: Colors.orange,
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Accountinfo(),
                  ));
                },
                child: const Text(
                  "Account",
                  style: TextStyle(color: Colors.black),
                ),
              )),
              PopupMenuItem(
                  child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const BankAccount()));
                },
                child: const Text(
                  "Add Bank Account",
                  style: TextStyle(color: Colors.black),
                ),
              )),
              PopupMenuItem(
                  child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
              )),
            ],
          )),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Bills(),
                  ));
                },
                child: Container(
                  //color: Colors.white,
                  width: 150,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  //color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/Bills.png'),
                      const Text(
                        'Pay Bills',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 150,
                height: 200,
                child: Column(
                  children: [
                    Image.asset('assets/trans.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Transfer Money',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Row(
          children: [],
        )
      ]),
    );
  }
}
