import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
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
        child: GestureDetector(
          child: Row(
            children: [
              Visibility(
                visible: tap == true ? false : true,
                child: Container(
                  //top: -50,

                  child: Text(
                    '"I am a selftaught fullstack flutter developer,\n with expertise in Firebase and Firestore.\n Also have experience of deploying, testing \n and debugging apps"', // have realtime experience of deploying, testing and debugging realtime apps. Helped building Weekend Story a SaaS app with over 2k+ downloads" ',
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.biryani(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'images/Firebase.gif',
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
