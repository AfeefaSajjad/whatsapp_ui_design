import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 05.0, horizontal: 30.0),
          child: Text(
            "Status",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const ListTile(
          leading: CircleAvatar(
            //backgroundColor: Colors.teal,
            backgroundImage: AssetImage("assets/images/person3.jpg"),

            radius: 40,
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 05.0, horizontal: 30.0),
          child: Text(
            "Recent updates",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.32,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  backgroundImage: AssetImage("assets/images/person3.jpg"),
                  radius: 40,
                ),
                title: Text("My Status"),
                subtitle: Text("Today 2:00 PM"),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Channels",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Text("Explore",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.green),
                  ))
            ],
          ),
        ),
        Container(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 3.0,
                        blurRadius: 3.0,
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Flexible(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 22.0,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/person2.jpg"),
                          ),
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            "Ali Raza",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 20.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF25D366),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
