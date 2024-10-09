import 'package:flutter/material.dart';
import 'package:modern_navbar/screens/delivery_screen.dart';
import 'package:modern_navbar/screens/navbar_screen.dart';
import 'package:modern_navbar/screens/pickup_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true, // Centers the title
          title: const Text(
            'START YOUR ORDER',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.close,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const NavBarScreen()), // Navigate to NavBarScreen
                  (route) =>
                      false, // This removes all previous routes from the stack
                );
              },
            ),
            const SizedBox(
              width: 20,
            ),
          ],
          elevation: 0.0, // Removes AppBar shadow
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'HOW WOULD YOU LIKE TO RECEIVE YOUR ORDER?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Menu availability and pricing may vary between order types.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 93, 93, 93)),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Outline border
                  backgroundColor: Colors.white, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PickupScreen()), // Navigate to NavBarScreen
                    (route) =>
                        false, // This removes all previous routes from the stack
                  );
                },
                child: const Text(
                  'Pick up',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Outline border
                  backgroundColor: Colors.white, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const DeliveryScreen()), // Navigate to NavBarScreen
                    (route) =>
                        false, // This removes all previous routes from the stack
                  );
                },
                child: const Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
