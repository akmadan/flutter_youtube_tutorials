import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> item_names = [
    'Arm Chair',
    'Study Table',
    'Sofa Set',
    'Dining Table',
    'TV Cabinet'
  ];
  List<String> prices = ['56,999', '78,879', '45,000', '87,000', '34,000'];
  List<String> images = ['chair.png', 'st.png', 'sofa.png', 'dt.png', 'tv.png'];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      child: Stack(
        children: [
          Positioned(
            height: 200,
            width: w,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff5262d9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text('Welcome, Akshit',
                          style: GoogleFonts.roboto(
                              fontSize: 32, color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.room,
                        color: Colors.white,
                      ),
                      Text('Pune, India',
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 165,
            left: 20,
            right: 20,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text('Search Furniture',
                      style:
                          GoogleFonts.roboto(fontSize: 18, color: Colors.grey))
                ],
              ),
            ),
          ),
          Positioned(
              top: 240,
              child: Container(
                height: h - 240,
                // color: Colors.red,
                width: w,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.blue,
                      height: 150,
                      margin: EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 120,
                                width: 150,
                                child: Image.asset('assets/' + images[index]),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item_names[index],
                                      style: GoogleFonts.mada(
                                          fontSize: 22,
                                          color: Colors.grey[800])),
                                  Text(prices[index],
                                      style: GoogleFonts.mada(
                                          fontSize: 20,
                                          color: Colors.grey[600])),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ))
        ],
      ),
    ));
  }
}
