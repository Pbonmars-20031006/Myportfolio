import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
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
      height: kIsWeb ? screenSize.height : screenSize.width,
      width: kIsWeb ? screenSize.width : screenSize.height,
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

                  child: AutoSizeText(
                    '" I am a selftaught fullstack flutter developer,\n  with expertise in Firebase and Firestore.\n I have experience of deploying, testing \n and debugging apps realtiem"', // have realtime experience of deploying, testing and debugging realtime apps. Helped building Weekend Story a SaaS app with over 2k+ downloads" ',
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.biryani(
                      color: Colors.white,
                      fontSize: screenSize.height * 0.043,
                      fontWeight: FontWeight.w800,
                      // height: 1.2,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/Firebase.gif',
                height:
                    kIsWeb ? screenSize.height * 0.4 : screenSize.height * 0.1,
                //fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
