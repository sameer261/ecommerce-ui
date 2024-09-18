import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // State variable to track the quantity
  int _quantity = 1;

  // Method to decrease the quantity
  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  // Method to increase the quantity
  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: Column(
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
                SizedBox(
                  width: 150,
                ),
                Text(
                  'My Cart',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  // Image on the left
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/fashion-girl.jpg', // Replace with your image path
                      height: 130, // Adjust the height as needed
                      width: 130, // Adjust the width as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Column for name and price
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Brown Jacket', // Replace with your product name
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Size: XL', // Replace with your product size
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2500 PKR', // Replace with your product price
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                // "-" icon in white box
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.7,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.remove, // "-" icon
                                        color: Colors.black, // Icon color
                                        size: 14, // Icon size
                                      ),
                                      onPressed:
                                          _decreaseQuantity, // Decrease quantity
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 10), // Space between "-" and number
                                // Number "1"
                                Text(
                                  '$_quantity', // Display the quantity
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                    width: 10), // Space between number and "+"
                                // "+" icon in brown box
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.7,
                                    ),
                                    color: Colors.brown, // Brown background
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add, // "+" icon
                                        color: Colors.white, // Icon color
                                        size: 14, // Icon size
                                      ),
                                      onPressed:
                                          _increaseQuantity, // Increase quantity
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
