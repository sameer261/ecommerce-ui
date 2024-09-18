import 'package:fashion/passwordmanager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
                  'Settings',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align children to start and end
              children: [
                Row(
                  children: [
                    Icon(
                      Iconsax.notification_copy,
                      color: Colors.brown,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Notifition Settings',
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
                      Iconsax.key_copy,
                      color: Colors.brown,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Password manager',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Passwordmanager()));
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
                      Iconsax.card_copy,
                      color: Colors.brown,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delete Account',
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
          ],
        ),
      ),
    );
  }
}
