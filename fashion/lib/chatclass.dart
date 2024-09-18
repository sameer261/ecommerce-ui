

class Chat {
  final String name;
  final String lastMessage;
  final String image;
  final String title;
  final bool isActive;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.title,
    required this.isActive,
  });
}

List Chatdata = [
  Chat(
      name: 'Sameer',
      lastMessage: 'hello',
      image: 'assets/images/sameer.jpg',
      title: '5:34 PM',
      isActive: true),
  Chat(
      name: 'Muzammil',
      lastMessage: 'hi bro',
      image: 'assets/images/muzaamil.jpg',
      title: '2:22 AM',
      isActive: false)
];
