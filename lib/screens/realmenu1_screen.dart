import 'package:flutter/material.dart';

class RealMenu1Screen extends StatefulWidget {
  @override
  _RealMenu1ScreenState createState() => _RealMenu1ScreenState();
}

class _RealMenu1ScreenState extends State<RealMenu1Screen> {
  final ScrollController _scrollController = ScrollController();

  // Create GlobalKeys for each section
  final Map<String, GlobalKey> sectionKeys = {
    'MEAL': GlobalKey(),
    'FOR ONE': GlobalKey(),
    'GROUP': GlobalKey(),
    'SNACK SHARING': GlobalKey(),
    'CHICKEN': GlobalKey(),
    'RICE & BOWLS': GlobalKey(),
    'SNACK & SWEET': GlobalKey(),
    'BURGERS': GlobalKey(),
    'SIDE & DRINK': GlobalKey(),
  };

  final List<String> sections = [
    'MEAL',
    'FOR ONE',
    'GROUP',
    'SNACK SHARING',
    'CHICKEN',
    'RICE & BOWLS',
    'SNACK & SWEET',
    'BURGERS',
    'SIDE & DRINK'
  ];

  // Method to scroll to the section using its key
  void scrollToSection(String section) {
    final key = sectionKeys[section];
    if (key != null) {
      // Get the render object of the section
      final context = key.currentContext;
      if (context != null) {
        // Get the position of the section on the screen
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PICK UP'),
        backgroundColor: Colors.white, // KFC red color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pickup Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KFC THE CRYSTAL',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Handle Change location
                  },
                  child: const Text(
                    'Change',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Navigation Bar
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: sections.map((section) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ElevatedButton(
                        onPressed: () => scrollToSection(section),
                        child: Text(section),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

            // Sections
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MEAL Section
                    SectionHeader(
                      key: sectionKeys['MEAL'], // Assign the key here
                      title: 'MEAL',
                    ),
                    MealCard(
                      title: 'Kai Jai Ded Gang with angry hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/kai_jai_ded_gang_angry.jpg',
                    ),
                    MealCard(
                      title: 'Kai Jai Ded Gang with baby hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/kai_jai_ded_gang_baby.jpg',
                    ),

                    const SizedBox(height: 10),

                    // FOR ONE Section
                    SectionHeader(
                      key: sectionKeys['FOR ONE'],
                      title: 'FOR ONE',
                    ),
                    MealCard(
                      title: 'Kai Jai Ded Gang with angry hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/kai_jai_ded_gang_angry.jpg',
                    ),
                    MealCard(
                      title: 'Kai Jai Ded Gang with baby hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/kai_jai_ded_gang_baby.jpg',
                    ),

                    const SizedBox(height: 10),

                    // GROUP Section
                    SectionHeader(
                      key: sectionKeys['GROUP'],
                      title: 'GROUP',
                    ),
                    MealCard(
                      title: 'Family Meal with assorted chicken',
                      price: '฿599.00',
                      imagePath: 'assets/images/family_meal.jpg',
                    ),
                    MealCard(
                      title: 'Group Pack with sides',
                      price: '฿799.00',
                      imagePath: 'assets/images/group_pack.jpg',
                    ),

                    const SizedBox(height: 10),

                    // Add other sections similarly...

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MealCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath; // Added image path

  const MealCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imagePath, // Required parameter for image path
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Display the meal image
            Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
