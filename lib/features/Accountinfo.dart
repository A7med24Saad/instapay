import 'package:flutter/material.dart';
import 'package:instapay/cash/cash.dart';
import 'package:instapay/features/HomeScreen.dart';

class Accountinfo extends StatefulWidget {
  const Accountinfo({super.key});

  @override
  State<Accountinfo> createState() => _AccountinfoState();
}

class _AccountinfoState extends State<Accountinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.orange,
            )),
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "50000",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "EGP",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                  future: cash.get(cash.NameKey),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        '${snapshot.data}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      );
                    } else {
                      return const Text('error');
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
