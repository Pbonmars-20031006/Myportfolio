import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomSection3 extends StatefulWidget {
  const BottomSection3({super.key});

  @override
  State<BottomSection3> createState() => _BottomSection3State();
}

class _BottomSection3State extends State<BottomSection3> {
  bool? tap = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        //controller: ScrollController,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/ws_black.png",
              height: 300,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    //top: -50,
                    child: Text(
                      '" Weekend Story, a SaaS app with over 2k+ downloads. Worked on features like listing plans,\n circles , exclusives etc. Also played a role in introducing new features as well as designing the UI/UX\n of the app." ',
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.biryani(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        // height: 1.2,
                      ),
                    ),
                  ),
                  Row(children: [
                    GestureDetector(
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        // ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
