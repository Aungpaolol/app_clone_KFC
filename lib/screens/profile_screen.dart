import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modern_navbar/components/navimgsignin.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';
import 'package:modern_navbar/screens/language_screen.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Insert NavimgSignin widget
                const NavimgSignin(), // Added here

                // Btn Menu Profile
                const SizedBox(
                  height: 10,
                ),
                const ProfileMenu(title: 'FIND A KFC'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'ALLERGEN INFORMATION'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'SUPPORT'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'CATERING'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'OUR HISTORY'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'SOCIAL IMPACT'),
                const SizedBox(
                  height: 20,
                ),
                const ProfileMenu(title: 'WORK WITH KFC THAILAND'),
                const SizedBox(
                  height: 20,
                ),

                //language btn
                InkWell(
                  onTap: () {
                    // Navigate to the Language Selection screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LanguageSelectionScreen()),
                    );
                  },
                  borderRadius:
                      BorderRadius.circular(15), // Matches the button's shape
                  child: SizedBox(
                    width: 150,
                    height: 35,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.language, // The language icon
                              color:
                                  Colors.black, // Set the icon color (optional)
                              size: 20, // Adjust the icon size (optional)
                            ),
                            const SizedBox(
                              width: 8, // Add some space between icon and text
                            ),
                            Text(
                              'English',
                              style: textBtn, // Your text style
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                //Menu After language
                Column(
                  children: [
                    const SizedBox(height: 20),
                    // Legal Links Section
                    TextButton(
                      onPressed: () {},
                      child: const Text('KFC Privacy Notice',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Terms of Use',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Yum',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Cookie Settings',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const SizedBox(height: 20),

                    // Social Media Icons Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.instagram),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.facebook), // Facebook icon
                          iconSize: 40,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.xTwitter),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.youtube),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.tiktok),
                          iconSize: 35,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // LINE Icon centered
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.line),
                      iconSize: 40,
                    ),

                    const SizedBox(height: 20),

                    // Footer Text
                    const Text(
                      'Copyright © KFC Thailand. 2024 All Rights Reserved.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      'Version 24.16.0 (Prod.241600)',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
