import 'package:fashion/cardpage.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Paymentpage extends StatelessWidget {
  const Paymentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey[300]!,
                        width: 2), // Light grey border
                    color: Colors.white, // Background color inside the circle
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.black), // Backward icon
                    onPressed: () {
                      Navigator.of(context).pop(); // Navigate back on press
                    },
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Debit & Credit Card',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity, // Use full width available
              height: 50, // Customize the height
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(4.0), // Rounded corners
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Iconsax.card, color: Colors.brown),
                  SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Add New Card',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cardpage()));
                    },
                    child: const Text(
                      'Link',
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'More Payment Options',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity, // Use full width available
              height: 50, // Customize the height
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(4.0), // Rounded corners
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/easy.png',
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Easy paisa',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Link',
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity, // Use full width available
              height: 50, // Customize the height
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(4.0), // Rounded corners
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 2,
                  ),
                  Image.asset(
                    'assets/images/jaz.png',
                    height: 44,
                  ),
                  const Expanded(
                    child: Text(
                      'Jazz Cash',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Link',
                      style: TextStyle(color: Colors.brown),
                    ),
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
