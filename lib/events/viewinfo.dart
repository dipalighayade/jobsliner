import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewinfo extends StatefulWidget {
  const Viewinfo({super.key});

  @override
  State<Viewinfo> createState() => _ViewinfoState();
}

class _ViewinfoState extends State<Viewinfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 75,
          leading: const Icon(Icons.arrow_back),
          toolbarHeight: 70,
          titleSpacing: -15,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'List of Tech Events',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          shadowColor: const Color.fromRGBO(0, 0, 0, 0),
          scrolledUnderElevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEventImage(),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _buildEventTitle('Dev-ops Meet-up'),
                    const SizedBox(height: 10),
                    _buildEventDetails(),
                    const SizedBox(height: 25),
                    _buildEventDescription(),
                    const SizedBox(height: 13),
                    _buildButton('More Info')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text1) {
    return Center(
      child: Container(
        width: 190,
        height: 32,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF1FFF9A), Color(0xFF1EE3FF)],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            text1,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEventImage() {
    return Stack(
      children: [
        SizedBox(
          child: ClipRRect(
            child: Image.asset(
              'assets/img/view.png',
              width: 410,
              height: 229,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // The gradient overlay
        Container(
          width: 410,
          height: 230,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0),
                Color.fromRGBO(255, 255, 255, 1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEventTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildEventDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailRow(('assets/img/calender.svg'), '20th August 2024'),
        const SizedBox(height: 4),
        _buildDetailRow(('assets/img/location.svg'), 'Chitnavis Center, Nagpur'),
        const SizedBox(height: 4),
        _buildDetailRow(('assets/img/clock.svg'), '3PM Onwards'),
        const SizedBox(height: 4),
        _buildDetailRow(('assets/img/phone.svg'), '+91-327128781'),
        const SizedBox(height: 4),
        _buildDetailRow(('assets/img/email.svg'), 'meetup@gmail.com'),
        const SizedBox(height: 4),
      ],
    );
  }

  Widget _buildDetailRow(String iconPath, String text) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: 12,
          height: 12,
          color: Colors.blue,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xff616161),
            wordSpacing: -1.9,
          ),
        ),
      ],
    );
  }

  Widget _buildEventDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Event',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xff565656),
              wordSpacing: -1.9,
            ),
          ),
          const SizedBox(height: 8),
          _buildBulletPoint(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
          _buildBulletPoint(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
          _buildBulletPoint(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
          _buildBulletPoint(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4.5,
            height: 4.5,
            margin: const EdgeInsets.only(top: 6),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF848484),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
