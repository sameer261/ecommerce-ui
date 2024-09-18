import 'package:fashion/details.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavoritedss = false;
  bool _isFavoritedd = false;
  bool _isFavoriteds = false;
  bool _isFavorited = false;
  final List<String> imgList = [
    'assets/images/poster1.jpg',
    'assets/images/poster2.jpg',
    'assets/images/poster3.jpg',
    'assets/images/poster4.jpg',
  ];

  final List<Color> dotColors = [
    Colors.blue, // Blurred color for the first dot
    Colors.red, // Color for the second dot
    const Color.fromARGB(255, 207, 114, 145), // Color for the third dot
    Colors.black // Color for the fourth dot
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(46),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.brown,
                        size: 24,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Karachi, Pakistan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 24,
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Iconsax.search_normal_1_copy,
                          color: Colors.brown,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.brown, width: 1.3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space before the carousel
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList
                    .map((item) => Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 15), // Space before the dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => CarouselSlider,
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == entry.key
                              ? dotColors[entry.key]
                              : Colors.grey.withOpacity(0.4)
                          // Blurred effect
                          ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.brown),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/tshirt3.png',
                        color: Colors.brown,
                        height: 30,
                        width: 30,
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/pent1.png',
                        color: Colors.brown,
                        height: 65,
                        width: 65,
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/dress1.png',
                        color: Colors.brown,
                        height: 35,
                        width: 35,
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/jacket.png',
                        color: Colors.brown,
                        height: 40,
                        width: 40,
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/heel.png',
                        color: Colors.brown,
                        height: 48,
                        width: 48,
                      ),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 13,
                  ),
                  Text('T-Shirt'),
                  SizedBox(
                    width: 65,
                  ),
                  Text('Pent'),
                  SizedBox(
                    width: 62,
                  ),
                  Text('Dress'),
                  SizedBox(
                    width: 53,
                  ),
                  Text('Jacket'),
                  SizedBox(
                    width: 55,
                  ),
                  Text('Shoes'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            overlayColor: Colors.grey,
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 0.5, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          overlayColor: Colors.brown,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Newest',
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            overlayColor: Colors.grey,
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 0.5, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          'Popular',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            overlayColor: Colors.grey,
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 0.5, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          'Men',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            overlayColor: Colors.grey,
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 0.5, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          'Women',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            overlayColor: Colors.grey,
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 0.5, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          'Accessories',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()));
                        },
                        child: Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/fashion-girl.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          width: 40, // Adjust size as needed
                          height: 40, // Adjust size as needed
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0.5), // Background color of the circle
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _isFavorited =
                                    !_isFavorited; // Toggle favorite state
                              });
                            },
                            icon: Icon(
                              _isFavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavorited
                                  ? Colors.red
                                  : Colors.brown, // Change color based on state
                            ),
                            iconSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 210,
                        width: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/blackshirt.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          width: 40, // Adjust size as needed
                          height: 40, // Adjust size as needed
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0.5), // Background color of the circle
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _isFavoriteds =
                                    !_isFavoriteds; // Toggle favorite state
                              });
                            },
                            icon: Icon(
                              _isFavoriteds
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavoriteds
                                  ? Colors.red
                                  : Colors.brown, // Change color based on state
                            ),
                            iconSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Brown Jacket',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '4.9',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Black T-shirt',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              const Row(
                children: [
                  Text(
                    '2500 PKR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Text(
                    '800 PKR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 210,
                        width: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/blue2.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          width: 40, // Adjust size as needed
                          height: 40, // Adjust size as needed
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0.5), // Background color of the circle
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _isFavoritedd =
                                    !_isFavoritedd; // Toggle favorite state
                              });
                            },
                            icon: Icon(
                              _isFavoritedd
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavoritedd
                                  ? Colors.red
                                  : Colors.brown, // Change color based on state
                            ),
                            iconSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 210,
                        width: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/blue3.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          width: 40, // Adjust size as needed
                          height: 40, // Adjust size as needed
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0.5), // Background color of the circle
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _isFavoritedss =
                                    !_isFavoritedss; // Toggle favorite state
                              });
                            },
                            icon: Icon(
                              _isFavoritedss
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavoritedss
                                  ? Colors.red
                                  : Colors.brown, // Change color based on state
                            ),
                            iconSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Blue T-shirt',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '4.2',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Stylish frog',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              const Row(
                children: [
                  Text(
                    '1250 PKR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Text(
                    '1999 PKR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
