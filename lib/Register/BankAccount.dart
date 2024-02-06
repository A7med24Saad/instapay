import 'package:flutter/material.dart';
import 'package:instapay/cash/cash.dart';
import 'package:instapay/features/HomeScreen.dart';

List<String> banksName = [
  "البنك الاهلى المصرى",
  "بنك مصر",
  "بنك الاسكندرية",
  "بنك ابو ظبى التجارى",
  "بنك ابو ظبى الاسلامى",
  "البنك العربى الافريقى الدولى",
  "البنك العربى",
  "المصرف العربى الدولى",
  "البنك الاهلى القطرى",
  "بنك قناة السويس",
  "بنك القاهرة",
  "بنك الامارات دبى الوطنى NBD",
  "بنك البركة",
  "بنك فيصل الاسلامى"
];
List<String> userBanks = [];

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Select Your Bank',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[0]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/Al Ahli.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[0],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[1]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/Alex.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[1],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[2]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/Bank masr.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[2],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[3]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/Abu dhabi.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[3],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[4]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/islamic abu dhabi.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[4],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[5]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/african arab bank.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[5],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[6]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/Arab bank.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[6],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[7]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/arab international.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[7],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[8]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/qnb.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[8],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[9]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/suez canal.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[9],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[10]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/cairo.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[10],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[11]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/nbd.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[11],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[12]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/baraka.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[12],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    userBanks.add(banksName[13]);
                    cash.storebanks(cash.BankKey, userBanks);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/faisel islamic.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          banksName[13],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
