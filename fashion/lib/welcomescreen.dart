import 'package:fashion/onboardingscreen.dart';
import 'package:fashion/signin.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 20, right: 20), // Added padding around the body
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text and images to the start
          children: [
            // Row of Images aligned at the top
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align images to the top
              children: [
                // First Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    height: 500,
                    width: 200,
                    color: Colors.brown,
                    child: Image.asset(
                      'assets/images/lady1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Column of Images
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 280,
                        width: 200,
                        color: Colors.brown,
                        child: Image.asset(
                          'assets/images/lady7.jpg',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                        child: Image.asset(
                          'assets/images/lady3.jpg',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 45), // Space between images and title
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(text: '     The '),
                  TextSpan(
                    text: 'Fashion App ',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'That\n  '),
                  TextSpan(text: 'Makes You Look Your Best'),
                ],
              ),
            ),
            const SizedBox(height: 45),
            const Text(
              '       It\'s important to have customer service, a customer\n   service provider, but that\'s exactly what happened to you.',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,

              // Button stretches across the width of the parent
              child: ElevatedButton(
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 30), () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>  const Onboardingscreen()),
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    iconColor: Colors.brown,
                    overlayColor: Colors.brown,
                    minimumSize: const Size(100, 55)),
                child: const Text(
                  ' Let‘s Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Future.delayed(const Duration(milliseconds: 20), () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Signin()),
                        );
                      });
                    },
                    child: const Text(
                      'Signin',
                      style: TextStyle(color: Colors.brown, fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
