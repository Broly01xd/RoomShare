import 'package:flutter/material.dart';
import 'package:roomshare/core/themes/app_theme.dart';
import 'package:roomshare/presentation/screens/loginPage/phonePage.dart';
import 'package:roomshare/presentation/screens/onboardingPage/OnboardingScreen.dart';

import 'presentation/screens/userDetailsPage/userDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RoomShare',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const UserDetail(),
    );
  }
}
