import 'package:flutter/material.dart';

class RealMenuScreen extends StatefulWidget {
  @override
  _RealMenuScreenState createState() => _RealMenuScreenState();
}

class _RealMenuScreenState extends State<RealMenuScreen> {
  final ScrollController _scrollController = ScrollController();

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
        title: const Text('PICK UP/Delivery'),
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
                      key: sectionKeys['MEAL'],
                      title: 'MEAL'),
                    const MealCard(
                      title: 'Kai Jai Ded Gang with angry hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/meal1.png',
                    ),
                    const MealCard(
                      title: 'Kai Jai Ded Gang with baby hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/meal2.png',
                    ),
                    const MealCard(
                      title: 'The Box Kai Jai Ded with angry hot sauce',
                      price: '฿169.00',
                      imagePath: 'assets/images/meal3.png',
                    ),
                    const MealCard(
                      title: 'The Box Kai Jai Ded with baby hot sauce',
                      price: '฿169.00',
                      imagePath: 'assets/images/meal4.png',
                    ),
                    const MealCard(
                      title: 'Kai Jai Ded Chicken Pop with angry hot sauce',
                      price: '฿49.00',
                      imagePath: 'assets/images/meal5.png',
                    ),
                    const MealCard(
                      title: 'Kai Jai Ded Chicken Pop with baby hot sauce',
                      price: '฿49.00',
                      imagePath: 'assets/images/meal6.png',
                    ),
                    const MealCard(
                      title: 'ALL IN ONE BUCKET',
                      price: '฿299.00',
                      imagePath: 'assets/images/meal7.png',
                    ),
                    const MealCard(
                      title: 'Porjai Bucket',
                      price: '฿199.00',
                      imagePath: 'assets/images/meal8.png',
                    ),
                    const MealCard(
                      title: 'The Box Signature',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal9.png',
                    ),
                    const MealCard(
                      title: 'The Box All star',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal10.png',
                    ),
                    const MealCard(
                      title: 'KFC The Box All Rice Spicy Chicken',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal11.png',
                    ),
                    const MealCard(
                      title: 'KFC The Box All Rice Green Curry',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal12.png',
                    ),
                    const MealCard(
                      title: 'Chick N Share Zabb Team',
                      price: '฿99.00',
                      imagePath: 'assets/images/meal13.png',
                    ),
                    const MealCard(
                      title: 'Chick N Share Nuggets&POP Team',
                      price: '฿99.00',
                      imagePath: 'assets/images/meal14.png',
                    ),
                    const MealCard(
                      title: 'Egg Tart 3pcs. Free 1pc.',
                      price: '฿87.00',
                      imagePath: 'assets/images/meal15.png',
                    ),
                    const MealCard(
                      title: 'Egg Tart 6pcs. Free 2pc.',
                      price: '฿174.00',
                      imagePath: 'assets/images/meal16.png',
                    ),

                    const SizedBox(height: 10),

                    // FOR ONE Section
                    SectionHeader(
                      key: sectionKeys['FOR ONE'],
                      title: 'FOR ONE'),
                    const MealCard(
                      title: 'The Box Kai Jai Ded with angry hot sauce',
                      price: '฿169.00',
                      imagePath: 'assets/images/meal3.png',
                    ),
                    const MealCard(
                      title: 'The Box Kai Jai Ded with baby hot sauce',
                      price: '฿169.00',
                      imagePath: 'assets/images/meal4.png',
                    ),
                    const MealCard(
                      title: 'KFC The Box All Rice Spicy Chicken',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal11.png',
                    ),
                    const MealCard(
                      title: 'KFC The Box All Rice Green Curry',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal12.png',
                    ),
                    const MealCard(
                      title: 'The Box Signature',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal9.png',
                    ),
                    const MealCard(
                      title: 'The Box All star',
                      price: '฿159.00',
                      imagePath: 'assets/images/meal10.png',
                    ),
                    const MealCard(
                      title: 'Donjai 3 Set',
                      price: '฿139.00',
                      imagePath: 'assets/images/donjai3.png',
                    ),
                    const MealCard(
                      title: 'Donjai 2 Set',
                      price: '฿109.00',
                      imagePath: 'assets/images/donjai2.png',
                    ),
                    const MealCard(
                      title: 'KFC Zabb Chicken Rice Bowl Set',
                      price: '฿89.00',
                      imagePath: 'assets/images/forone1.png',
                    ),
                    const MealCard(
                      title: 'KFC Combo Green Curry Crispy Chicken Rice',
                      price: '฿89.00',
                      imagePath: 'assets/images/forone2.png',
                    ),
                    const MealCard(
                      title: 'Zinger Burger Set',
                      price: '฿119.00',
                      imagePath: 'assets/images/forone3.png',
                    ),
                    const MealCard(
                      title: 'For One Meal',
                      price: '฿99.00',
                      imagePath: 'assets/images/forone4.png',
                    ),
                    const MealCard(
                      title: 'For One',
                      price: '฿69.00',
                      imagePath: 'assets/images/forone5.png',
                    ),

                    const SizedBox(height: 10),

                    // GROUP Section
                    SectionHeader(
                      key: sectionKeys['GROUP'],
                      title: 'GROUP'),
                    const MealCard(
                      title: 'Kai Jai Ded Gang with angry hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/meal1.png',
                    ),
                    const MealCard(
                      title: 'Kai Jai Ded Gang with baby hot sauce',
                      price: '฿259.00',
                      imagePath: 'assets/images/meal2.png',
                    ),
                    const MealCard(
                      title: 'Porjai Bucket',
                      price: '฿199.00',
                      imagePath: 'assets/images/meal8.png',
                    ),
                    const MealCard(
                      title: 'ALL IN ONE BUCKET',
                      price: '฿299.00',
                      imagePath: 'assets/images/meal7.png',
                    ),

                    const SizedBox(height: 10),

                    // SNACK SHARING Section
                    SectionHeader(
                      key: sectionKeys['SNACK SHARING'],
                      title: 'SHACK SHARING'),
                    const MealCard(
                      title: 'Chick N Share Zabb Team',
                      price: '฿99.00',
                      imagePath: 'assets/images/meal13.png',
                    ),
                    const MealCard(
                      title: 'Chick N Share Nuggets&POP Team',
                      price: '฿99.00',
                      imagePath: 'assets/images/meal14.png',
                    ),
                    const MealCard(
                      title: 'Snack Box',
                      price: '฿149.00',
                      imagePath: 'assets/images/snack1.png',
                    ),
                    const MealCard(
                      title: 'Egg Tart 3pcs. Free 1pc.',
                      price: '฿87.00',
                      imagePath: 'assets/images/meal15.png',
                    ),
                    const MealCard(
                      title: 'Egg Tart 6pcs. Free 2pc.',
                      price: '฿174.00',
                      imagePath: 'assets/images/meal16.png',
                    ),

                    const SizedBox(height: 10),

                    // CHICKEN Section
                    SectionHeader(
                      key: sectionKeys['CHICKEN'],
                      title: 'CHICKEN'),
                    const MealCard(
                      title: '1 pc. Fried Chicken',
                      price: '฿45.00',
                      imagePath: 'assets/images/chicken1.png',
                    ),

                    const SizedBox(height: 10),

                    // RICE AND BOWL Section
                    SectionHeader(
                      key: sectionKeys['RICE & BOWLS'],
                      title: 'RICE & BOWLS'),
                    const MealCard(
                      title: 'KFC Green Curry Crispy Chicken Rice',
                      price: '฿59.00',
                      imagePath: 'assets/images/rice1.png',
                    ),
                    const MealCard(
                      title: 'KFC Green Spicy Chicken Rice Bowl',
                      price: '฿59.00',
                      imagePath: 'assets/images/rice2.png',
                    ),
                    const MealCard(
                      title: 'Plain Rice',
                      price: '฿20.00',
                      imagePath: 'assets/images/rice3.png',
                    ),

                    const SizedBox(height: 10),

                    // SNACKS AND SWEET Section
                    SectionHeader(
                      key: sectionKeys['SNACK & SWEET'],
                      title: 'SNACK & SWEET'),
                    const MealCard(
                      title: 'Kai Jai Ded Chicken Pop with angry hot sauce',
                      price: '฿49.00',
                      imagePath: 'assets/images/meal5.png',
                    ),
                    const MealCard(
                      title: 'Kai Jai Ded Chicken Pop with baby hot sauce',
                      price: '฿49.00',
                      imagePath: 'assets/images/meal6.png',
                    ),
                    const MealCard(
                      title: 'Chick N Roll',
                      price: '฿39.00',
                      imagePath: 'assets/images/snacksweet1.png',
                    ),
                    const MealCard(
                      title: 'Chick n Bun',
                      price: '฿39.00',
                      imagePath: 'assets/images/snacksweet2.png',
                    ),
                    const MealCard(
                      title: '6 pc. Egg Tart',
                      price: '฿39.00',
                      imagePath: 'assets/images/snacksweet3.png',
                    ),

                    const SizedBox(height: 10),

                    // BURGER Section
                    SectionHeader(
                      key: sectionKeys['BURGERS'],
                      title: 'BURGERS'),
                    const MealCard(
                      title: 'Zinger Burger',
                      price: '฿69.00',
                      imagePath: 'assets/images/burger1.png',
                    ),

                    const SizedBox(height: 10),

                    // SIDE DRINK Section
                    SectionHeader(
                      key: sectionKeys['SIDE & DRINK'],
                      title: 'SIDE & DRINK'),
                    const MealCard(
                      title: 'Large French Fries',
                      price: '฿49.00',
                      imagePath: 'assets/images/side1.png',
                    ),
                    const MealCard(
                      title: 'Regular French Fries',
                      price: '฿39.00',
                      imagePath: 'assets/images/side2.png',
                    ),
                    const MealCard(
                      title: 'Regular Mashed Potato',
                      price: '฿49.00',
                      imagePath: 'assets/images/side3.png',
                    ),
                    const MealCard(
                      title: 'Iced Milk Tea 12oz',
                      price: '฿49.00',
                      imagePath: 'assets/images/side4.png',
                    ),
                    const MealCard(
                      title: 'Cocoa Malt 12oz',
                      price: '฿49.00',
                      imagePath: 'assets/images/side5.png',
                    ),
                    const MealCard(
                      title: 'Iced Pinky Milk 16oz',
                      price: '฿49.00',
                      imagePath: 'assets/images/side6.png',
                    ),

                    const SizedBox(height: 10),
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

  const SectionHeader({super.key, required this.title});

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
    super.key,
    required this.title,
    required this.price,
    required this.imagePath, // Required parameter for image path
  });

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
              width: 90,
              height: 70,
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
