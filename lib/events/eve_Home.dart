// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EveHome extends StatefulWidget {
  const EveHome({super.key});

  @override
  State<EveHome> createState() => _EveHomeState();
}

class _EveHomeState extends State<EveHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: const Icon(Icons.arrow_back),
        toolbarHeight: 67,
        titleSpacing: -15,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Upcoming Workshops',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
        elevation: 1,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1FFF9A), Color(0xFF1EE3FF)],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'List Your Event',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'List of upcoming events',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEventCard(
                  'Tech',
                  'assets/img/tech2.png',
                  const Color.fromARGB(255, 200, 220, 255),
                  const Color(0xff00276D),
                  const Color(0xff9EC0FF)),
              _buildEventCard(
                      'College',
                      'assets/img/college2.png',
                      const Color.fromARGB(255, 255, 227, 161),
                      const Color(0xffC48D00),
                      const Color(0xffFFD15C)),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEventCard(
                      'Startup',
                      'assets/img/startup2.png',
                      const Color.fromARGB(255, 255, 215, 233),
                      const Color(0xffA12F4B),
                      const Color(0xffFFBCCD)),
                  _buildEventCard(
                      'Workshop',
                      'assets/img/workshop2.png',
                      const Color.fromARGB(255, 197, 244, 255),
                      const Color(0xff040404),
                      const Color(0xff79E7FF)),
            ],
          ),
       ],
      ),
    );
  }
}

Widget _buildEventCard(String title, String imagePath, Color backgroundColor,
    Color textcolor, Color circleColor) {
  return Stack(
    children: [
      SizedBox(
        //margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -40,
                      right: -10,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        width: 145,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: circleColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
              
                    // Inner circle (to create the donut effect)
                    Positioned(
                      top: -25,
                      right: 8,
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
      Positioned(
        bottom: 10,
        right: 0,
        child: Image.asset(
            imagePath,
            height: 100.0,
            fit: BoxFit.contain,
          ),
      ),
         Positioned(
          top: 20,
          left: 15,
           child: Text(
                       title,
                       style: GoogleFonts.poppins(
                         fontSize: 16.68,
                         fontWeight: FontWeight.w500,
                         letterSpacing: -0.5,
                         color: textcolor,
                       ),
           ),
         ),
      
      
    ],
  );
}
