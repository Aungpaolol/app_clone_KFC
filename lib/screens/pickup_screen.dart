import 'package:flutter/material.dart';
import 'package:modern_navbar/screens/realmenu_screen.dart';
import 'package:modern_navbar/screens/menu_screen.dart';

class PickupScreen extends StatelessWidget {
  const PickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigate back to MenuScreen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MenuScreen()),
              );
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SELECT A KFC',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
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
                          const MenuScreen()), // Navigate to MenuScreen
                  (route) =>
                      false, // This removes all previous routes from the stack
                );
              },
            ),
            const SizedBox(width: 20),
          ],
          elevation: 0.0, // Removes AppBar shadow
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for "Already a member?" and "Sign In" and "Use My Location"
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Space between for alignment
                children: [
                  Row(
                    children: [
                      const Text(
                        'Already a member? ',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle sign in action
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red, // Change color if needed
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle use my location action
                    },
                    child: const Text(
                      'Use My Location',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add some spacing

              // Add the text field for searching
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search by Province or Postcode',
                  prefixIcon: const Icon(Icons.location_on, color: Colors.red),
                ),
              ),

              const SizedBox(height: 20), // Additional spacing

              Container(
                padding:
                    const EdgeInsets.all(16.0), // Padding inside the container
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26, // Shadow color
                      blurRadius: 4.0, // Shadow blur radius
                      offset: Offset(0, 2), // Shadow offset
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align items to the start
                  children: [
                    // Delivery and Pickup Options
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.delivery_dining, color: Colors.green),
                            SizedBox(width: 5),
                            Text('Delivery', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.storefront, color: Colors.green),
                            SizedBox(width: 5),
                            Text('Pick Up (Dine In, In Store)',
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20), // Spacing

                    // Address
                    const Text(
                      '555/9 Room 127-129 Floor 1 Moo 1, Bang Kanuon,\nNonthaburi, Thailand, 11130.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),

                    // Get Directions Button
                    TextButton.icon(
                      onPressed: () {
                        // Handle Get Directions action
                      },
                      icon: const Icon(Icons.map, color: Colors.blue),
                      label: const Text(
                        'Get Directions',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),

                    // Open Status
                    const Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.green),
                        SizedBox(width: 5),
                        Text(
                          'Open Now - until 9:00PM',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Order Buttons
                    ElevatedButton(
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RealMenuScreen()),
                      );
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        minimumSize: const Size(
                            double.infinity, 50), // Full width button
                      ),
                      child: const Text(
                        'Order Now',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle "Schedule Order"
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(color: Colors.black),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        minimumSize: const Size(
                            double.infinity, 50), // Full width button
                      ),
                      child: const Text(
                        'Schedule Order',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
