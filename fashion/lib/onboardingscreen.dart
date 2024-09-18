import 'package:fashion/navigationmenu.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  int currentindex = 0;
  final CarouselController _controller = CarouselController();

  final data = [
    {
      'img': 'assets/images/screen1.png',
      'title': 'Seamless Shopping Experience',
      'desc':
          'It is very important for the customer to follow the customer‘s training, but this is what happens at the same time',
    },
    {
      'img': 'assets/images/screen2.png',
      'title': 'Wishlist: Where Fashion Dreams Begin',
      'desc':
          'It is very important for the customer to follow the customer‘s training, but this is what happens at the same time',
    },
    {
      'img': 'assets/images/screen3.png',
      'title': 'Swift And Reliable Delivery',
      'desc':
          'It is very important for the customer to follow the customer‘s training, but this is what happens at the same time',
    },
  ];

  TextSpan _getStyledTitle(String title) {
    Map<String, TextStyle> styles = {
      'Seamless': TextStyle(
          color: Colors.brown, fontSize: 42, fontWeight: FontWeight.bold),
      'Dreams': TextStyle(
          color: Colors.brown, fontSize: 42, fontWeight: FontWeight.bold),
      'Fashion': TextStyle(
          color: Colors.brown, fontSize: 42, fontWeight: FontWeight.bold),
      'Swift': TextStyle(
          color: Colors.brown, fontSize: 42, fontWeight: FontWeight.bold),
      'Reliable': TextStyle(
          color: Colors.brown, fontSize: 42, fontWeight: FontWeight.bold),
    };

    List<TextSpan> spans = [];
    List<String> words = title.split(' ');
    for (String word in words) {
      TextStyle style = styles.entries
          .firstWhere((entry) => word.contains(entry.key),
              orElse: () => MapEntry(
                  '',
                  TextStyle(
                      color: Colors.black,
                      fontSize: 43,
                      fontWeight: FontWeight.bold)))
          .value;

      spans.add(TextSpan(text: word + ' ', style: style));
    }

    return TextSpan(children: spans);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 30),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: data
                .map((e) => Image.asset(
                      e['img']!,
                    ))
                .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              onPageChanged: (index, reason) {
                setState(() {
                  currentindex = index;
                });
              },
            ),
            carouselController: _controller,
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                if (currentindex < data.length - 1) {
                  _controller.nextPage();
                } else {
                  // Navigate to Home Page when on the last screen
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: _getStyledTitle(
                          data[currentindex]['title']!,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        data[currentindex]['desc']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.brightness_1,
                            color: currentindex == 0
                                ? Colors.brown
                                : Colors.brown.withOpacity(0.5),
                            size: currentindex == 0 ? 16 : 8,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: currentindex == 1
                                ? Colors.brown
                                : Colors.brown.withOpacity(0.5),
                            size: currentindex == 1 ? 16 : 8,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.brightness_1,
                            color: currentindex == 2
                                ? Colors.brown
                                : Colors.brown.withOpacity(0.5),
                            size: currentindex == 2 ? 16 : 8,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (currentindex > 0) {
                                _controller.previousPage();
                              }
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.brown,
                                  width: 2.0,
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.brown,
                                size: 30,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currentindex < data.length - 1) {
                                _controller.nextPage();
                              } else {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Navigationmenu(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.brown,
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
