import 'package:flutter/material.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  bool _isAgreed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 140),
                Text(
                  'Add card',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image.asset(
                'assets/images/card1.png',
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Card Holder Name',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '  Esther Howard',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.brown, width: 1.3),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Text(
              'Card Number',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ' 4716 9627 1635 8047',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.brown, width: 1.3),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  '    Expiry Date',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 170,
                ),
                const Text(
                  'CVV',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '02/30',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.brown, width: 1.3),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '000',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.brown, width: 1.3),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                SizedBox(
                  width: 1,
                ),
                Text(
                  'Save Card',
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
            Spacer(),
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
                    'Add Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
