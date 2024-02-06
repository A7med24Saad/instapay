import 'package:flutter/material.dart';
import 'package:instapay/Register/Register.dart';
import 'package:instapay/features/HomeScreen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Login',
            style: TextStyle(color: Colors.white),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 5, right: 5),
                  child: TextFormField(
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        label: const Text(
                          'Email/User name',
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
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const RegisterView()));
                    },
                    child: const Text(
                      "Create Account?",
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
