import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/main_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/1.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              "from",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Meta",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
