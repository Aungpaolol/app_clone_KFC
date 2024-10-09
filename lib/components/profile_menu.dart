// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;

  const ProfileMenu({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 40,
      child: Row(
        children: [
          const SizedBox(width: 10,),
          Text(
            title,
            style: textMenu,
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
