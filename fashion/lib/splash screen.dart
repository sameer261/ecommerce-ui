import 'package:fashion/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Background color of the splash screen
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75.0, // Circle diameter
              height: 75.0, // Circle diameter
              decoration: const BoxDecoration(
                color: Colors.brown, // Circle color
                shape: BoxShape.circle, // Circle shape
              ),
              child: Center(
                child: Text(
                  'f',
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.white, // Text color inside the circle
                    fontSize: 40.0, // Text size inside the circle
                    fontWeight:
                        FontWeight.bold, // Text weight inside the circle
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'fashion',
              style: GoogleFonts.playfairDisplay(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Align(
              alignment: const Alignment(0.0, 0.02),
              child: Container(
                width: 10.0, // Circle diameter
                height: 16.0, // Circle diameter
                decoration: const BoxDecoration(
                  color: Colors.brown, // Circle color
                  shape: BoxShape.circle, // Circle shape
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
