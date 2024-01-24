import 'package:flutter/material.dart';
import 'package:sbts/utils/images.dart' as icons;

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  static const routeName = "/forgotPassword";
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  hintText: "Enter Email",
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Reset Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
