import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavimgSignin extends StatelessWidget {
  const NavimgSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Center the Logo
            Center(
              child: Image.asset(
                'assets/images/KFC.png',
                width: 250,
                height: 150,
              ),
            ),
            const SizedBox(
                width: 5), // Add some spacing between the logo and the button
            // Sign In Button
            OutlinedButton(
              onPressed: () async {
                const url = 'https://www.kfc.co.th/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.black), // Black border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded button
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black), // Black text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
