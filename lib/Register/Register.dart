import 'package:flutter/material.dart';
import 'package:instapay/Login/loginView.dart';
import 'package:instapay/Register/BankAccount.dart';
import 'package:instapay/cash/cash.dart';

String name = '';
String password = '';
String confirm = '';
bool flag = false;
bool conflag = false;

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Register',
            style: TextStyle(color: Colors.white),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Welcome to PAGA',
                  style: TextStyle(color: Colors.orange),
                ),
                Image.asset('assets/paga.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        label: const Text(
                          'User name',
                          style: TextStyle(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white70))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: TextFormField(
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        label: const Text(
                          'City',
                          style: TextStyle(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white70))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: TextFormField(
                    maxLines: 1,
                    validator: (val) => val!.length < 11 ? 'Wrong' : null,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        label: const Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white70))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    validator: (val) => val!.length < 6
                        ? 'Password is less than 6 numbers'
                        : null,
                    maxLines: 1,
                    obscureText: flag,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                flag = !flag;
                              });
                            },
                            icon: Icon(flag
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        label: const Text(
                          'Password',
                          style: TextStyle(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white70))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 5, right: 5, bottom: 50),
                  child: TextFormField(
                    obscureText: conflag,
                    onChanged: (value) {
                      setState(() {
                        confirm = value;
                      });
                    },
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                conflag = !conflag;
                              });
                            },
                            icon: Icon(conflag
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        label: const Text(
                          'Comfirm Password',
                          style: TextStyle(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white70))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (name.isNotEmpty &&
                        password.isNotEmpty &&
                        password == confirm) {
                      cash.store(cash.NameKey, name);
                      cash.store(cash.Passkey, password);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const BankAccount(),
                      ));
                    } else if (password.isEmpty || name.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('complete your information')));
                    } else if (password != confirm) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('please reconfirm password')));
                    } else if (confirm.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('please confirm password')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('complete your information')));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginView()));
                    },
                    child: const Text(
                      "Login?",
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
