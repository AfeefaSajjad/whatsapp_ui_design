import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemExtent: 80,
      itemBuilder: (context, index) {
        List<String> images = [
          "assets/images/person1.jpg",
          "assets/images/person2.jpg",
          "assets/images/person3.jpg"
        ];
        return ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: AssetImage(images[index % images.length]),
            radius: 30,
          ),
          title: const Text("Ali Haider"),
          subtitle: const Text("50 minutes ago"),
          trailing: const Icon(Icons.phone),
        );
      },
    );
  }
}
