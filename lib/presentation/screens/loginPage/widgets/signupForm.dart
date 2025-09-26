import 'package:flutter/material.dart';
import 'package:roomshare/core/themes/app_color.dart';
import 'package:roomshare/widgets/appText.dart';
import 'package:roomshare/widgets/primaryButton.dart';
import 'package:roomshare/widgets/primaryIconButton.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        PrimaryIconButton(
          text: "Log in with Google",
          iconPath: "assets/images/google.png",
          onPressed: () {},
        ),
        const SizedBox(height: 10),
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
        const SizedBox(height: 15),
        const TextField(
          decoration: InputDecoration(
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
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
        const SizedBox(height: 20),
        PrimaryButton(
          onPressed: () {},
          text: "Sign Up",
        ),
      ],
    );
  }
}
