import 'package:flutter/material.dart';
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemExtent: 80,
      itemBuilder: (context, index){
        List<String> images = [
          "assets/images/person1.jpg",
          "assets/images/person2.jpg",
          "assets/images/person3.jpg"
        ];
        return ListTile(
          onTap: (){},
          leading: CircleAvatar(
            backgroundImage: AssetImage(images[index % images.length]),
            radius: 30,
          ),
          title: const Text("Ali Haider"),
          subtitle: const Text("Hello everyone!"),
          trailing: const Text("12:00AM"),
        );
      },
    );
  }
}
