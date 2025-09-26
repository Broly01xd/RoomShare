import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:roomshare/core/themes/app_color.dart';
import 'package:roomshare/presentation/screens/loginPage/widgets/loginForm.dart';
import 'package:roomshare/presentation/screens/loginPage/widgets/signupForm.dart';
import 'package:roomshare/widgets/appText.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: Lottie.asset(
              'assets/lottie/onboard1.json',
              fit: BoxFit.contain,
            ),
          ),
          const AppText(
            "RoomShare",
            weight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() => isLogin = true),
                child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color:
                          isLogin ? AppColors.electricCyan : Colors.grey[300],
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(2)),
                    ),
                    child: Center(
                      child: AppText(
                        "Login",
                        weight: FontWeight.bold,
                        color: isLogin ? AppColors.midnightBlue : Colors.black,
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () => setState(() => isLogin = false),
                child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color:
                          !isLogin ? AppColors.electricCyan : Colors.grey[300],
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(2)),
                    ),
                    child: Center(
                      child: AppText(
                        "SignUp",
                        weight: FontWeight.bold,
                        color: !isLogin ? AppColors.midnightBlue : Colors.black,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: isLogin ? const LoginForm() : const SignUpForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
