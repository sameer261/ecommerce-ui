import 'package:fashion/chngepassword.dart';
import 'package:flutter/material.dart';

class Passwordmanager extends StatefulWidget {
  const Passwordmanager({super.key});

  @override
  State<Passwordmanager> createState() => _PasswordmanagerState();
}

class _PasswordmanagerState extends State<Passwordmanager> {
  bool _isPasswordVisibles = false;
  bool _isPasswordVisibless = false;
  bool _isPasswordVisible = false;
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
                  width: 90,
                ),
                Text(
                  'Password Manager',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Current Password',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: !_isPasswordVisibles,
              decoration: InputDecoration(
                  hintText: '  ********',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        const BorderSide(color: Colors.brown, width: 1.3),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisibles = !_isPasswordVisibles;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisibles
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _isPasswordVisibles ? Colors.brown : Colors.grey,
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Chngepassword()));
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'New Password',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                  hintText: '  ********',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        const BorderSide(color: Colors.brown, width: 1.3),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _isPasswordVisible ? Colors.brown : Colors.grey,
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'New Confrim Password',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: !_isPasswordVisibless,
              decoration: InputDecoration(
                  hintText: '  ********',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        const BorderSide(color: Colors.brown, width: 1.3),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisibless = !_isPasswordVisibless;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisibless
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _isPasswordVisibless ? Colors.brown : Colors.grey,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
