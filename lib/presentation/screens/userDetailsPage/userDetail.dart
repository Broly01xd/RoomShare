import 'package:flutter/material.dart';
import 'package:roomshare/core/themes/app_color.dart';
import 'package:roomshare/widgets/appText.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText("Complete Your Profile",
                weight: FontWeight.bold, size: 20, color: AppColors.snowWhite),
            AppText(
              "Tell us more about yourself",
              size: 14,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(),
                  ),
                  AppText(
                    "Upload Photo",
                    size: 14,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
