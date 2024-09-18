import 'package:fashion/chatscreeen.dart';
import 'package:fashion/favourite.dart';
import 'package:fashion/home.dart';
import 'package:fashion/profile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:get/get.dart';

class Navigationmenu extends StatelessWidget {
  const Navigationmenu({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(N());
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          indicatorColor: Colors.brown.withOpacity(0.2),
          elevation: 0,
          height: 80,
          selectedIndex: Controller.SelectedIndex.value,
          onDestinationSelected: (index) =>
              Controller.SelectedIndex.value = index,
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home_copy), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.heart_copy), label: 'WishList'),
            NavigationDestination(
                icon: Container(
                  child: Image.asset(
                    'assets/images/chat1.png',
                    height: 26,
                    color: Colors.black,
                  ),
                ),
                label: 'Chat'),
            NavigationDestination(
                icon: Icon(Iconsax.profile_circle), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => Controller.screen[Controller.SelectedIndex.value]),
    );
  }
}

class N extends GetxController {
  final Rx<int> SelectedIndex = 0.obs;

  final screen = [HomePage(), Favourite(), Chatscreeen(), Profilescreen()];
}
