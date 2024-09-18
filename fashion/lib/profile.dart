import 'package:fashion/paymentpage.dart';
import 'package:fashion/setting.dart';

import 'package:fashion/welcomescreen.dart';
import 'package:flutter/material.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    void _showBottomSheett(BuildContext context) {
      showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true, // Ensure the bottom sheet can be sized
        builder: (BuildContext context) {
          return Container(
            height: 320,
            width:
                MediaQuery.of(context).size.width, // Height of the bottom sheet
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 150, // Set the desired width for the line here
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 350, // Set the desired width for the line here
                  child: Divider(thickness: 0.5),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Are you sure you want to log out?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.brown),
                          backgroundColor: Colors.white,
                          iconColor: Colors.white,
                          overlayColor: Colors.white,
                          minimumSize: const Size(100, 55)),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                          ModalRoute.withName('/home'),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.brown,
                          backgroundColor: Colors.brown,
                          iconColor: Colors.brown,
                          overlayColor: Colors.brown,
                          minimumSize: const Size(100, 55)),
                      child: Text(
                        'Yes, Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, left: 32, right: 32, bottom: 40),
        child: Center(
          child: Column(
            children: [
              Text(
                'Profile',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/user2.png'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child: Icon(
                        Iconsax.edit_2_copy,
                        color: Colors.white,
                      ),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sameer',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.user_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Your profile',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.card_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Payment Method',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Paymentpage()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.clipboard_text_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Orders',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.setting_2_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Setting()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.lock_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.warning_2_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Help Center',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.profile_add_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Invite Friends',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align children to start and end
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.logout_1_copy,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log out',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        _showBottomSheett(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.brown,
                        size: 20,
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
