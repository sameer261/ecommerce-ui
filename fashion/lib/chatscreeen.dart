import 'package:fashion/chatscreen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Chatscreeen extends StatelessWidget {
  const Chatscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'fashion',
          style: GoogleFonts.playfairDisplay(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        actions: [
          Icon(
            Iconsax.camera_copy,
            color: Colors.brown,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Iconsax.search_normal_1_copy,
            color: Colors.brown,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: screen2(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Icon(
          Iconsax.profile_add_copy,
          color: Colors.white,
        ),
      ),
    );
  }
}
