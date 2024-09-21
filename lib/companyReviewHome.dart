import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Companyreviewhome extends StatefulWidget {
  const Companyreviewhome({super.key});

  @override
  State<Companyreviewhome> createState() => _CompanyreviewhomeState();
}

class _CompanyreviewhomeState extends State<Companyreviewhome> {
  // Create a list of companies with data
  final List<Map<String, dynamic>> companyList = [
    {
      'name': 'Tata Consultancy Services (TCS)',
    },
    {
      'name': 'Infosys',
    },
    {
      'name': 'HCL Technologies',
    },
    {
      'name': 'Tata Consultancy Services (TCS)',
    },
    {
      'name': 'Tata Consultancy Services (TCS)',
    },
    {
      'name': 'HCL Technologies',
    },
    {
      'name': 'Tata Consultancy Services (TCS)',
    },
    {
      'name': 'Infosys',
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
                padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 5),
                child: SvgPicture.asset('assets/img/notification.svg', height: 24,),
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43,vertical: 5),
                child: Container(
                  width: 6.0, // Size of the bullet
                  height: 6.0,
                  // margin: const EdgeInsets.symmetric(
                  //     horizontal: 0, vertical: 5), // Align bullet with text
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 190,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1FFF9A), Color(0xFF1EE3FF)],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          'List Your Company',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 35,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ('Search job here...'),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF585858),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                      borderSide: const BorderSide(color: Color.fromRGBO(188, 188, 188, 1)),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: const Color(0xB1F3F3F3),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: companyList.length, // Dynamically use the list length
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var company = companyList[index]; // Access the current company
                  return Card(
                    child: Container(
                      height: 85,
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xdededede),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                company['name'],
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Logic for Follow button can be added here
                                      },
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
                                  const SizedBox(width: 12),
                                  Container(
                                    width: 105,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
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
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(94, 94, 94, 1),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
