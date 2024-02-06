//this screen for Electricity , Gas , Water Bill

import 'package:flutter/material.dart';
import 'package:instapay/features/Bills.dart';
import 'package:instapay/features/Bills/Telephone.dart';

class Companies extends StatefulWidget {
  const Companies({super.key});

  @override
  State<Companies> createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Select Company",
            style: TextStyle(color: Colors.orange),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Bills(),
                ));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.orange,
              )),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Telephone(),
                ));
              },
              leading: Image.asset('assets/we.jpeg'),
              title: const Text(
                "We",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Telephone(),
                ));
              },
              leading: Image.asset('assets/orange.png'),
              title: const Text(
                "orange",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Telephone(),
                ));
              },
              leading: Image.asset('assets/vodafone.png'),
              title: const Text(
                "Vodafone",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Telephone(),
                ));
              },
              leading: Image.asset('assets/etisalat.png'),
              title: const Text(
                "etisalat",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
