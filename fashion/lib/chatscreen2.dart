import 'package:fashion/chatclass.dart';
import 'package:fashion/message.dart';
import 'package:flutter/material.dart';


class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Image.asset(
                'assets/images/meta.gif',
                height: 60,
                width: 60,
              ),
              hintText: ' Ask Meta AI or Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.brown, width: 1.3),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: Chatdata.length,
                  itemBuilder: (context, index) => chatcard(
                        chat: Chatdata[index],
                        press: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Message())),
                      ))),
        ],
      ),
    );
  }
}

class chatcard extends StatelessWidget {
  const chatcard({
    super.key,
    required this.chat,
    required this.press,
  });
  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(chat.image),
              ),
              if (chat.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                  ),
                ),
            ]),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Opacity(opacity: 0.6, child: Text(chat.lastMessage)),
                ],
              ),
            )),
            Opacity(opacity: 0.5, child: Text(chat.title))
          ],
        ),
      ),
    );
  }
}
