import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:roomshare/presentation/screens/onboardingPage/widgets/OnboardingPage.dart';
import 'package:roomshare/widgets/primaryButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool _isLastPage = false;
  @override
  Widget build(BuildContext context) {
    final Pages = [
      const OnboardingPage(
        animationPath: 'assets/lottie/onboard1.json',
        title: 'Create or Join Groups',
        subTitle:
            'Start a group with friends or join using a unique code. Simple and secure.',
      ),
      const OnboardingPage(
        animationPath: 'assets/lottie/onboard2.json',
        title: 'Split Expenses Instantly',
        subTitle:
            'Add bills, track who paid, and let the app do the math for you.',
      ),
      const OnboardingPage(
        animationPath: 'assets/lottie/Question.json',
        title: 'No More Confusion',
        subTitle:
            'Get clear summaries and settle balances without the awkwardness.',
      )
    ];
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (_, index) => Pages[index],
            controller: _controller,
            itemCount: Pages.length,
            onPageChanged: (index) {
              setState(
                () => _isLastPage = index == Pages.length - 1,
              );
            },
          ),
          Positioned(
            bottom: 90,
            right: 158,
            child: SmoothPageIndicator(
              controller: _controller,
              count: Pages.length,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 24,
            right: 24,
            child: PrimaryButton(
                fullWidth: false,
                text: _isLastPage ? "Get Started" : "Next",
                onPressed: () {
                  _controller.nextPage(
                      duration: Duration(microseconds: 100),
                      curve: Curves.easeInOut);
                }),
          ),
        ],
      ),
    );
  }
}
