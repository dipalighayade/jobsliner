import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Approval extends StatefulWidget {
  const Approval({super.key});

  @override
  State<Approval> createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.09),
                offset: Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 0,
              ),
            ],
          ),
          child: AppBar(
            leadingWidth: 75,
            leading: const Icon(Icons.arrow_back),
            toolbarHeight: 70,
            titleSpacing: -15,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'Approval for event listing',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            shadowColor: const Color.fromRGBO(0, 0, 0, 1),
            scrolledUnderElevation: 1,
            elevation: 0,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(231, 239, 255, 0.53),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -55,
                    child: Container(
                      height: 260,
                      width: 260,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Color.fromRGBO(31, 255, 154, 0.2),
                            Color.fromRGBO(30, 227, 255, 0.2),
                          ],
                          radius: 0.7,
                        ),
                      ),
                    ),
                  ), // First Circle
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -70,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Color.fromRGBO(31, 255, 154, 0.1),
                            Color.fromRGBO(30, 227, 255, 0.1),
                          ],
                          radius: 0.7,
                        ),
                      ),
                    ),
                  ), // Second Circle
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -70,
                    child: Container(
                      height: 220,
                      width: 220,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Color.fromRGBO(31, 255, 154, 0.1),
                            Color.fromRGBO(30, 227, 255, 0.1),
                          ],
                          radius: 0.7,
                        ),
                      ),
                    ),
                  ), // Third Circle
                  Positioned(
                    top: 300, 
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                        Text(
                          'Approval Pending',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            wordSpacing: -1.9,
                          ),
                          textAlign: TextAlign.left, 
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Your approval has been sent to our team for checking whether the details are filled properly or not. Will connect with you shortly.',
                          style: GoogleFonts.poppins(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w400,
                            wordSpacing: -1.9,
                            color: const Color.fromRGBO(132, 132, 132, 1),
                          ),
                          textAlign: TextAlign.left, // Align text to left
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
