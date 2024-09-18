import 'package:fashion/signin.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isPasswordVisible = false;
  bool _isAgreed = false;
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
              _inputfield(context),
              _Divider(context),
              _footor(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          'Create Account',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
            'Fill your information bellow or register\n            with your social account'),
      ],
    );
  }

  _inputfield(context) {
    return Column(
      children: [
        const Row(
          children: [Text('Name')],
        ),
        const SizedBox(
          height: 7,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '  username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.brown, width: 1.3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [Text('Email')],
        ),
        const SizedBox(
          height: 7,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '  example@gmail.com',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.brown, width: 1.3),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
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
        Row(
          children: [
            Checkbox(
              value: _isAgreed,
              activeColor: Colors.brown,
              tristate: false,
              onChanged: (newbool) {
                setState(() {
                  _isAgreed = newbool!;
                });
              },
            ),
            const Text(
              'Agree with',
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Terms & Condition',
                style: TextStyle(color: Colors.brown),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
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
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  _Divider(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '_________  Or sign in with  _________',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.apple),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/google.png',
                  height: 30,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                iconSize: 40,
                color: Colors.blue,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/twitter.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _footor(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () {
            Future.delayed(const Duration(milliseconds: 1), () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Signin()),
              );
            });
          },
          child: const Text(
            'Sign In',
            style: TextStyle(color: Colors.brown, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
