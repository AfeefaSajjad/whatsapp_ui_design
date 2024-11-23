import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'call_screen.dart';
import 'chats_screen.dart';
import 'status_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff008069),
          centerTitle: false,
          title: Text(
            "WhatsApp",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.05,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.06),
            child: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: screenWidth * 0.06,
                  ),
                ),
                Tab(
                  child: Text(
                    "Chats",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Status",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Calls",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: screenWidth * 0.06,
              ),
            ),
          ],
          iconTheme: IconThemeData(
            color: Colors.white,
            size: screenWidth * 0.06,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Camera",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                ),
              ),
            ),
            const ChatsScreen(),
            const StatusScreen(),
            const CallScreen(),
          ],
        ),
      ),
    );
  }
}
