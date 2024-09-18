import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool _isFavoriteds = true;
  bool _isFavorited = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          child: Center(
            child: Column(children: [
              Text(
                'My Wishlist',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
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
                          'Jacket',
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
                          'Shirt',
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
                          'T-shirt',
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
                          'Pent',
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/fashion-girl.jpg'),
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
                                    : Colors
                                        .brown, // Change color based on state
                              ),
                              iconSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
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
                                    : Colors
                                        .brown, // Change color based on state
                              ),
                              iconSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
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
                  SizedBox(
                    width: 30,
                  ),
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
            ]),
          ),
        ));
  }
}
