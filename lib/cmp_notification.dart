// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class cmp_notification extends StatefulWidget {
  const cmp_notification({super.key});

  @override
  State<cmp_notification> createState() => _cmp_notificationState();
}

class _cmp_notificationState extends State<cmp_notification> {
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
          child: SizedBox(
            height: 18,
            child: Text(
              'Notifications',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: const Color.fromRGBO(0, 0, 0, 1),
        elevation: 3,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          right: 15,
          left: 15
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 30,
                (context, index) {
                  return Card(
                    elevation: 0,
                    child: Container(
                      height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffECF3FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: const Color(
                                              0xffbababa), // Border color
                                          width: 0.5, // Border width
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage('assets/img/images.png'),
                                      ),
                                    ),
                                    const SizedBox(height: 25,),
                                    const SizedBox(width: 35,)
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      
                                      Text(
                                        'Tata Consultancy Services (TCS)',
                                        style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                     const  SizedBox(height: 3,),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labor.',
                                        style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF7c7c7c),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                        // ListTile(
                        //   leading: Container(
                        //     width: 25,
                        //     height: 25,
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       border: Border.all(
                        //         color: const Color(0xffbababa), // Border color
                        //         width: 0.5, // Border width
                        //       ),
                        //     ),
                        //     child: const CircleAvatar(
                        //       radius: 25,
                        //       backgroundImage:
                        //           AssetImage('assets/img/images.png'),
                        //     ),
                        //   ),
                        //   title: Text(
                        //     'Tata Consultancy Services (TCS)',
                        //     style: GoogleFonts.poppins(
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.w400,
                        //       color: const Color(0xFF000000),
                        //     ),
                        //   ),
                        //   subtitle: Text(
                        //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.',
                        //     style: GoogleFonts.poppins(
                        //       fontSize: 8,
                        //       fontWeight: FontWeight.w400,
                        //       color: const Color(0xFF7c7c7c),
                        //     ),
                        //   ),
                        // ),
                        ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
