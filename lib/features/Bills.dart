import 'package:flutter/material.dart';
import 'package:instapay/features/Bills/Companies.dart';
import 'package:instapay/features/Bills/HomeServices.dart';
import 'package:instapay/features/Bills/Telephone.dart';
import 'package:instapay/features/HomeScreen.dart';

class Bills extends StatefulWidget {
  const Bills({super.key});

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Bills',
            style: TextStyle(color: Colors.orange),
          ),
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 180,
                child: Image.asset('assets/Bills2.jpeg'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeServices(),
                  ));
                },
                child: Container(
                  width: 510,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/Electricity.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Electricity",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeServices(),
                  ));
                },
                child: Container(
                  width: 510,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/Water.jpg'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Water",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeServices(),
                  ));
                },
                child: Container(
                  width: 510,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/gas.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Home Gas",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Telephone(),
                  ));
                },
                child: Container(
                  width: 510,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/Telephone.jpeg'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Telephone",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Companies(),
                  ));
                },
                child: Container(
                  width: 515,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/internet.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Home Internet",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Companies(),
                  ));
                },
                child: Container(
                  width: 515,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/Mobile.jpeg'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Mobile",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  width: 515,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/social insurance.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Social Insurance",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  width: 515,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Image.asset('assets/Learning.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Learning",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
