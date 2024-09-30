import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTechEve extends StatefulWidget {
  const ListTechEve({super.key});

  @override
  State<ListTechEve> createState() => _ListTechEveState();
}

class _ListTechEveState extends State<ListTechEve> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 75,
          leading: const Icon(Icons.arrow_back),
          toolbarHeight: 67,
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
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
          elevation: 50,
          scrolledUnderElevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(), // This will push the button to the right
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Spacing between button and list
              Expanded(
                child: SizedBox(
                  height: 1500,
                  width: 500,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.597 , // Adjust this to make cards taller
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const MeetupCard(
                        imageUrl:
                            'assets/img/event.png', 
                        title: 'Design Meet-up',
                        date: 'Date : 20/08/24',
                        location: 'Chitnavis Center, Nagpur',
                        time: '3PM Onwards',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MeetupCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String location;
  final String time;

  const MeetupCard({super.key, 
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient border
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1FFF9A), Color(0xFF1EE3FF)],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color:  Color.fromRGBO(28, 108, 255, 0.13), 
                //
                offset: Offset(0, 4), 
                blurRadius: 10, 
                spreadRadius: 0, 
              ),
            ],
          ),
          padding: const EdgeInsets.all(
              1), 
        ),
        // Inner content layer
        Positioned.fill(
          child: Container(
            margin: const EdgeInsets.all(
                1), 
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the inner content
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              height: 300, // Increase the card height
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        imageUrl, 
                        height: 150, 
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text(
                            title,
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                             SvgPicture.asset(
                                          'assets/img/calender.svg',height: 10,color: Colors.blue,),
                            const SizedBox(width: 4),
                            Text(
                              date,
                              style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff676767)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                           SvgPicture.asset(
                                          'assets/img/location.svg',height: 10,color: Colors.blue,),
                            const SizedBox(width: 4),
                            Text(
                              location,
                              style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.w400,
                                color:const Color(0xff676767)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            SvgPicture.asset(
                                          'assets/img/clock.svg',height: 10,color: Colors.blue,),
                            const SizedBox(width: 4),
                            Text(
                              time,
                              style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff676767)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.1),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 20,
                              width: 65,
                              decoration: BoxDecoration(
                                color: const Color(0xffecf3ff),
                                border: Border.all(
                                  color: const Color(0xffa1c2ff),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'View Info',
                                  style: GoogleFonts.poppins(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff454545),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
