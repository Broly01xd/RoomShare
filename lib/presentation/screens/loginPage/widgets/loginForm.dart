import 'package:flutter/material.dart';
import 'package:roomshare/widgets/appText.dart';
import 'package:roomshare/widgets/primaryButton.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            labelText: "Email",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
        PrimaryButton(
          onPressed: () {},
          text: "Login",
        ),
        const SizedBox(height: 20),
        const Row(
          children: [
            Expanded(child: Divider(thickness: 1)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AppText("OR"),
            ),
            Expanded(child: Divider(thickness: 1)),
          ],
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/google.png",
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 10),
              const AppText(
                "Log in with Google",
                weight: FontWeight.bold,
                size: 16,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: const AppText(
            "Forgot password?",
            size: 14,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
