import 'package:flutter/material.dart';

class Chngepassword extends StatefulWidget {
  const Chngepassword({super.key});

  @override
  State<Chngepassword> createState() => _ChngepasswordState();
}

class _ChngepasswordState extends State<Chngepassword> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibles = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          'New Password',
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Your new password must be different \n from previously used passwords',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Password'),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        TextField(
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
              hintText: '  ********',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.brown, width: 1.3),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: _isPasswordVisible ? Colors.brown : Colors.grey,
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Confrim Password'),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        TextField(
          obscureText: !_isPasswordVisibles,
          decoration: InputDecoration(
              hintText: '  ********',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.brown, width: 1.3),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisibles = !_isPasswordVisibles;
                  });
                },
                icon: Icon(
                  _isPasswordVisibles ? Icons.visibility : Icons.visibility_off,
                  color: _isPasswordVisibles ? Colors.brown : Colors.grey,
                ),
              )),
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  iconColor: Colors.brown,
                  overlayColor: Colors.brown,
                  minimumSize: const Size(100, 55)),
              child: Text(
                'Create New Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
