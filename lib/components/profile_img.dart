import 'package:flutter/material.dart';
// import 'package:modern_navbar/constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/KFC-logo.png',
        width: 200,
        height: 200,
      ),
    );
  }
}