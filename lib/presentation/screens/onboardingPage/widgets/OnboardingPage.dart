import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  final String animationPath;
  final String title;
  final String subTitle;
  const OnboardingPage(
      {super.key,
      required this.animationPath,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Lottie.asset(animationPath),
        const SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: theme.textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          subTitle,
          style: theme.textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
