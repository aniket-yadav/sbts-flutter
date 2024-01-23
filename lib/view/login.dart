import 'package:flutter/material.dart';
import 'package:sbts/utils/images.dart' as icons;

class Login extends StatefulWidget {
  const Login({super.key});
  static const routeName = "/login";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
                bottom: 50,
              ),
              child: const Image(
                image: AssetImage(icons.bus),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Enter username",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Enter username",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
