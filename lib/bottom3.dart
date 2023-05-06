import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
      child: Center(
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          //controller: ScrollController,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/ws_black.png",
                height: screenSize.height * 0.2,
                //alignment: Alignment.centerLeft,
              ),
              Container(
                //top: -50,
                child: AutoSizeText(
                  '" Weekend Story, a SaaS app with over 2k+ \n downloads. Worked on features like listing \n plans, circles , exclusives etc.\n Also played a role in introducing new features\n as well as designing the UI/UX\n of the app." ',
                  //textAlign: TextAlign.center,
                  style: GoogleFonts.biryani(
                    color: Colors.white,
                    fontSize: screenSize.height * 0.02,
                    fontWeight: FontWeight.w800,
                    // height: 1.2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
