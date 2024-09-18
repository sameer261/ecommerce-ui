import 'package:fashion/cart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool _isFavorite = false; // Track if the heart icon is clicked
  String _selectedSize = ''; // Track selected size
  Color? _selectedColor; // Track selected color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/fashion3.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: _isFavorite ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _isFavorite = !_isFavorite; // Toggle favorite state
                  });
                },
              ),
            ),
          ),
          Positioned(
            top: 50, // Position text a little above the bottom
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Product Details',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.52,
            child: Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 20, right: 35, left: 35, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Female‘s Style',
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('4.9')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Light Brown Jacket',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Product Details',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'It‘s very important to have a patient, to follow up the training\n program, but it happens at such a time that with a lot of\n work and pain',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Read More',
                            style: TextStyle(color: Colors.brown, fontSize: 14),
                          )),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Select Size',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _buildSizeOption('S'),
                      SizedBox(width: 15),
                      _buildSizeOption('M'),
                      SizedBox(width: 15),
                      _buildSizeOption('L'),
                      SizedBox(width: 15),
                      _buildSizeOption('XL'),
                      SizedBox(width: 15),
                      _buildSizeOption('XXL'),
                      SizedBox(width: 15),
                      _buildSizeOption('XXXL'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select Colors',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _buildColorOption(Color.fromARGB(255, 242, 201, 139)),
                      SizedBox(width: 15),
                      _buildColorOption(
                          const Color.fromARGB(255, 213, 143, 117)),
                      SizedBox(width: 15),
                      _buildColorOption(const Color.fromARGB(255, 22, 22, 22)),
                      SizedBox(width: 15),
                      _buildColorOption(Color.fromARGB(255, 101, 72, 28)),
                      SizedBox(width: 15),
                      _buildColorOption(Colors.pink[50]!),
                      SizedBox(width: 15),
                      _buildColorOption(Colors.grey[300]!),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.2), // Gray shadow with some transparency
                      blurRadius: 20, // Softness of the shadow
                      spreadRadius: 2, // Extent of the shadow
                      offset: Offset(0, 4), // Position of the shadow
                    ),
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Total Price',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            ' 2500 PKR',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 19),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cart()));
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.brown,
                              backgroundColor: Colors.brown,
                              minimumSize: const Size(250, 60),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize
                                  .min, // Use minimum size for the row
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center align the row's children
                              children: [
                                Icon(
                                  Iconsax.bag_2, // Choose your icon here
                                  color: Colors.white,
                                  size: 26, // Adjust the icon size as needed
                                ),
                                SizedBox(
                                    width: 10), // Space between icon and text
                                Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              )),
        ],
      ),
    );
  }

  Widget _buildSizeOption(String size) {
    bool isSelected = _selectedSize == size;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.brown : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.brown : Colors.white,
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    bool isSelected = _selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
            color: isSelected ? Colors.white : Colors.transparent,
            width: 3,
          ),
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
