// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListEventInfo extends StatefulWidget {
  const ListEventInfo({super.key});

  @override
  State<ListEventInfo> createState() => _ListEventInfoState();
}

class _ListEventInfoState extends State<ListEventInfo> {
  final TextEditingController name = TextEditingController();
  final TextEditingController contactno = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController type = TextEditingController();
  final TextEditingController about = TextEditingController();
  final TextEditingController link1 = TextEditingController();

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
                  'List your Event Info',
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Fill the details to register your event',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15),
              _customTextField(name, 'Event Name'),
              _customTextField(contactno, 'Contact Number'),
              _customTextField(email, 'Email Address'),
              _customTextField(time, 'Event Time'),
              _customTextField(location, 'Event Location'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: type,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 17.0),
                      hintText: 'Event Type',
                      hintStyle: const TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                      ),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20,
                      ),
                      iconColor: const Color.fromRGBO(176, 176, 176, 1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0xffcee0ff), // Color for enabled border
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0xffcee0ff), // Color for focused border
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 220, // Increased height
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                    border: Border.all(
                      color: const Color(0xffcee0ff), // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: TextField(
                    controller: about,
                    maxLines: null, // Allow multi-line input
                    decoration: const InputDecoration(
                      contentPadding:  EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 17.0),
                      hintText: 'About Event',
                      hintStyle:  TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                      ),
                      border:
                          InputBorder.none, // Remove default TextField border
                    ),
                  ),
                ),
              ),
              _customTextField(link1, 'Website Link '),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1FFF9A), Color(0xFF1EE3FF)],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Save Event Info',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        wordSpacing: -1.9,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextField(TextEditingController controller, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 17.0),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Color(0xFF8A8A8A),
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              fontFamily: 'Poppins',
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
              borderSide: const BorderSide(
                color: Color(0xffcee0ff), // Color for enabled border
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
              borderSide: const BorderSide(
                color: Color(0xffcee0ff), // Color for focused border
              ),
            ),
          ),
        ),
      ),
    );
  }
}
