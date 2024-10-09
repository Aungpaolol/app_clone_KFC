import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_navbar/screens/menu_screen.dart';
import 'package:modern_navbar/screens/navbar_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, String>> _slides = [
    {
      'title': 'IRRESISTIBLE SPICE',
      'subtitle': 'KAI JAI DED HAS RETURNED',
      'buttonText': 'Order now',
      'imagePath': 'assets/images/slide1.jpg',
    },
    {
      'title': 'COLONEL TUESDAY',
      'subtitle': 'JUST PICK UP',
      'buttonText': 'Order now',
      'imagePath': 'assets/images/slide2.jpg',
    },
    {
      'title': '3 FREE 1',
      'subtitle': 'EGG TART',
      'buttonText': 'Order now',
      'imagePath': 'assets/images/slide3.jpg',
    },
    {
      'title': 'SNACK SHARING',
      'subtitle': 'CHICK & SHARE SET',
      'buttonText': 'Order now',
      'imagePath': 'assets/images/slide4.jpg',
    },
    // Add more slides as needed
  ];

  @override
  Widget build(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height / 3;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'PICK UP OR DELIVERY',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuScreen()),
                  );
                },
                child: const Text(
                  'Start Order',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image slider occupying 1/3 of the screen
              SizedBox(
                height: imageHeight,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _slides.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        // Image with a dark overlay
                        Image.asset(
                          _slides[index]['imagePath']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: imageHeight,
                        ),
                        // Dark overlay
                        Container(
                          width: double.infinity,
                          height: imageHeight,
                          color: Colors.black
                              .withOpacity(0.3), // Adjust opacity as needed
                        ),
                        // Slide content overlay (text and button)
                        Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _slides[index]['title']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                _slides[index]['subtitle']!,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                ),
                                onPressed: () {
                                  print(
                                      '${_slides[_currentPage]['buttonText']} pressed');
                                },
                                child:
                                    Text(_slides[_currentPage]['buttonText']!,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                    ),),
                                    
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Dots indicator for page view
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _slides.length,
                  (index) => _buildDot(index, _currentPage),
                ),
              ),
              // Other content
              Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    // Image
                    Center(
                      child: Image.asset(
                        'assets/images/KFCxBamBam.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 400,
                      ),
                    ),
                    // Dark overlay to make the image darker
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        color: Colors.black
                            .withOpacity(0.3), // Adjust the opacity as needed
                      ),
                    ),
                    // Positioned button in the middle left of the image
                    Positioned(
                      left: 20, // Adjust the horizontal position as needed
                      top:
                          335, // Adjust the vertical position to place it in the middle
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                        ),
                        onPressed: () {
                          print('See More button pressed');
                        },
                        child: const Text(
                          'See More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    // Image
                    Center(
                      child: Image.asset(
                        'assets/images/50%KFC.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 380,
                      ),
                    ),
                    // Dark overlay to make the image darker
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 380,
                        color: Colors.black
                            .withOpacity(0.3), // Adjust the opacity as needed
                      ),
                    ),
                    // Positioned button in the middle left of the image
                    Positioned(
                      left: 20, // Adjust the horizontal position as needed
                      top:
                          315, // Adjust the vertical position to place it in the middle
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavBarScreen()),
                            (route) =>
                                false, // This removes all previous routes from the stack
                          );

                          // Set the selected index to PromoScreen after navigating to NavBarScreen
                          final controller = Get.find<NavigationController>();
                          controller.selectedIndex.value =
                              2; // Assuming PromoScreen is at index 2
                        },
                        child: const Text(
                          'Order now',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    // Image
                    Center(
                      child: Image.asset(
                        'assets/images/KFC_Coupon.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                    // Dark overlay to make the image darker
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.black
                            .withOpacity(0.3), // Adjust the opacity as needed
                      ),
                    ),
                    // Positioned button in the middle left of the image
                    Positioned(
                      left: 20, // Adjust the horizontal position as needed
                      top:
                          160, // Adjust the vertical position to place it in the middle
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavBarScreen()),
                            (route) =>
                                false, // This removes all previous routes from the stack
                          );

                          // Set the selected index to PromoScreen after navigating to NavBarScreen
                          final controller = Get.find<NavigationController>();
                          controller.selectedIndex.value =
                              2; // Assuming PromoScreen is at index 2
                        },
                        child: const Text(
                          'See Coupon',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                width: double.infinity,
                color: Colors.red, // Set the background color to red
                padding: const EdgeInsets.all(
                    20), // Optional padding for the content
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the content vertically
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Center the content horizontally
                  children: [
                    const SizedBox(height: 50), // Top spacing
                    const Text(
                      'BECOME A MEMBER',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "UNLOCK MORE FINGER\nLICKIN' GOOD BENEFITS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Create an account to get access to\nexclusive promotions and coupons,\nand reorder your favourites.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                      onPressed: () async {
                        const url = 'https://kfc.co.th';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text(
                        'Sign me up!',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Image.asset(
                      'assets/images/kfc_fullbucket.png', // Replace with your image asset path
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'LIMITED TIME OFFERS',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "GET 'EM BEFORE THEY'RE GONE",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MenuScreen()),
                        );
                      },
                      child: const Text(
                        'View Offers',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Center(
                      child: Image.asset(
                        'assets/images/kfc_offers.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                        width: 400,
                        height: 300,
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

  // Dot indicator builder
  Widget _buildDot(int index, int currentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: currentPage == index ? 16 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
