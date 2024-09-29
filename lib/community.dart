import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override



  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<String> buttonlist = ["UI Design", "UX Design", "Animation", "Graphics"];
  String selectButton = '';
  List<bool> isFavorited = [false, false, false, false, false];
  List<bool> isExpandedList = [false, false, false, false, false];


  final List<Map<String, dynamic>> companyList = [
    {
      'que': 'Why to use this tool for design ?',
    },
    {
      'que': 'Why to use this tool for design ?',
    },
    {
      'que': 'Why to use this tool for developing ?',
    },
    {
      'que': 'Why to use this tool for developing ?',
    },
    {
      'que': 'Why to use this tool for developing ?',
    },
  ];

   List<ExpansionTileController> _controllers =[];

  void _collapseOtherTiles(int expandedIndex){
    for(int i=0;i<_controllers.length;i++){
      if(i!=expandedIndex){

        _controllers[i].collapse();
      }
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllers=List.generate(companyList.length, (_)=>ExpansionTileController());

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: Text(
            'Community',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          excludeHeaderSemantics: false,
          shadowColor: Colors.black,
          elevation: 5,
          scrolledUnderElevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                        width: 235,
                        height: 42,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(31, 255, 154, 1),
                            Color.fromRGBO(30, 227, 255, 1),
                          ]),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: [
                            Text(
                              'Get Your Answers',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios),
                          ]),
                        )), //button
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: ('Search Your Domain...'),
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromRGBO(88, 88, 88, 1),
                      ), //search bar
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(188, 188, 188, 1))),
                      hoverColor: const Color.fromRGBO(245, 245, 245, 0.7),
                      prefixIcon: const Icon(Icons.search),
                      iconColor: const Color.fromRGBO(163, 163, 163, 1),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31)),
                      fillColor: const Color(0xB1F5F5F5),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      "Domain : ",
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(149, 149, 149, 1),
                      ),
                    ),
                    Text(
                      (selectButton == "") ? "UI/UX Design" : selectButton,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(102, 102, 102, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2.4,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: buttonlist.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final buttonText = buttonlist[index];
                      final isSelected = selectButton == buttonText;
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 5),
                        child: Container(
                          height: 21,
                          width: 140,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(240, 240, 240, 1),
                            gradient: isSelected
                                ? const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(31, 255, 154, 1),
                                      Color.fromRGBO(30, 227, 255, 1),
                                    ],
                                  )
                                : null,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectButton = isSelected ? '' : buttonText;
                              });
                            }, //
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                buttonlist[index],
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(59, 59, 59, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                ListView.builder(
                  itemCount: companyList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var community = companyList[index];
                    return Card(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      elevation: 2,
                      shadowColor: const Color.fromARGB(255, 200, 221, 252),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: ExpansionTile(
                            
                            tilePadding: EdgeInsets.zero,
                            title: Center(
                              child: Text(
                                community['que'] ?? 'Question not available',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            collapsedIconColor:
                                const Color.fromRGBO(107, 127, 167, 1),
                            iconColor: const Color.fromRGBO(107, 127, 167, 1),
                            trailing: Icon(
                              size: 18,
                              isExpandedList[index]
                                  ? Icons.keyboard_arrow_down
                                  : Icons.arrow_forward_ios,
                            ),
                            controller: _controllers[index],
                            onExpansionChanged: (bool expanded) {
                              setState(() {
                                
                                if(expanded){
                                  _collapseOtherTiles(index);
                                }
                                isExpandedList[index] = expanded;
                              }
                              );
                            },
                            children: [
                              const Divider(
                                height: 20,
                                color: Color.fromRGBO(196, 196, 196, 1),
                                thickness: 0.5,
                              ),
                              _buildBulletPoint(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
                              _buildBulletPoint(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
                              _buildBulletPoint(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
                              _buildBulletPoint(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isFavorited[index] =
                                                !isFavorited[index];
                                          });
                                        },
                                        icon: Icon(
                                          isFavorited[index]
                                              ? Icons.favorite
                                              : Icons.favorite_border_outlined,
                                          color: isFavorited[index]
                                              ? Colors.red
                                              : const Color.fromRGBO(
                                                  112, 112, 112, 1),
                                        ),
                                      ),
                                      Text(
                                        'Like',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              132, 132, 132, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/img/comment.svg'),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Answer',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              132, 132, 132, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/img/share.svg'),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Share',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              132, 132, 132, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6.0,
            height: 6.0,
            margin: const EdgeInsets.only(top: 6),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(132, 132, 132, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
