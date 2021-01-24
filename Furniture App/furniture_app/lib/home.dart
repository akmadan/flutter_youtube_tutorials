import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              height: h * 3 / 4,
              width: w,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff5262d9),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80))),
                child: Column(
                  children: [
                    Container(
                        height: 400,
                        padding: EdgeInsets.all(40),
                        child: Image.asset('assets/chair.png')),
                    Text(
                      'Enjoy our armchairs quotes collection. Best armchairs quotes selected by thousands of our users!',
                      style:
                          GoogleFonts.mada(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Text('Add to Cart', style:GoogleFonts.roboto(fontSize: 16)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: h * 3 / 4,
                child: Container(
                  height: h / 4,
                  width: w,
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        },
                        backgroundColor: Color(0xff5262d9),
                        child: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
