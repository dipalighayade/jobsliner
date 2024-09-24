// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class cmp_info_page extends StatefulWidget {
  const cmp_info_page({super.key});

  @override
  State<cmp_info_page> createState() => _cmp_info_pageState();
}

class _cmp_info_pageState extends State<cmp_info_page> {
  final List<Map<String, dynamic>> list = [
    {
      'field': 'UI/UX Designer',
    },{
      'field': 'Power Bi Developer',
    },{
      'field': 'Frontend Developer',
    },{
      'field': 'Backend  Developer',
    },{
      'field': 'Project Manager',
    },{
      'field': 'Product manager',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: const Icon(Icons.arrow_back),
        toolbarHeight: 70,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                child: SvgPicture.asset(
                  'assets/img/notification.svg',
                  height: 24,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 43, vertical: 5),
                child: Container(
                  width: 6.0, // Size of the bullet
                  height: 6.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff00000), // Bullet color
                  ),
                ),
              ),
            ],
          ),
        ],
        titleSpacing: -15,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Company Review',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        excludeHeaderSemantics: false,
        shadowColor: const Color.fromRGBO(0, 0, 0, 1),
        elevation: 4,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffbababa), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/img/images.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  SizedBox(
                    width: 110,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: const Color(0xFFFFFFFF),
                        side: const BorderSide(
                          width: 0.5,
                          color: Color(0xFF005AFF),
                        ),
                      ),
                      child: Text(
                        '+ Follow',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF1C6CFF),
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Tata Consultancy Services (TCS)',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xff00f486), Color(0xff00cbe8)],
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                  child: Text(
                    'IT Company',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors
                          .white, // This will be overridden by the gradient
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      width: 105,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xfff4f4f4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: List.generate(5, (starIndex) {
                            return const Icon(
                              Icons.star,
                              color: Color(0xFFFFB800),
                              size: 17,
                            );
                          }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Give Review',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff7c7c7c),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 0.5,
            color: Color(0xff949494),
          ),
           Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Padding(
                  padding: const EdgeInsets.only(top:10,left: 30),
                  child: Container(
                    width: 210,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1EE3FF), Color(0xFF1FFF9A)],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'Current Job Openings',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 25,
                      right: 25,
                      bottom: 5
                    ),
                    child: ListView.builder(
                      itemCount: list.length, // Dynamically use the list length
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var job = list[index];
                      return  Card(
                        child: Container(
                          height: 65,
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xffECF3FF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 9),
                                    child: Text(
                                      job['field'],
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Color(0xff6B7FA7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    ),
                  ),
                )
             ],
           )
        ],
      ),
    );
  }
}
