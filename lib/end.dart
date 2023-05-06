import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_animations/bottom4.dart';

class end1 extends StatefulWidget {
  const end1({super.key});

  @override
  State<end1> createState() => _endState();
}

class _endState extends State<end1> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.1,
      width: screenSize.width,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 100,
            child: DelayedWidget(
              delayDuration: const Duration(milliseconds: 100), // Not required
              animationDuration: const Duration(seconds: 0), // Not required
              animation: DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
              child: AnimatedTextKit(
                // onFinished: () {
                //   navigate(context, const InfinityProfiles());
                // },
                animatedTexts: [
                  TypewriterAnimatedText(
                    '</flutter developer>',
                    textAlign: TextAlign.center,
                    //textStyle: colorizeTextStyle,

                    textStyle: TextStyle(
                        fontFamily: 'Biryani',
                        fontSize: 20,
                        color: Colors.white),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
                //totalRepeatCount: 1,
              ),
            ),
          ),
          Container(
            //top: -50,
            child: Text(
              'Hope you enjoyed the experience! (Built Using Flutter❤️)',
              //textAlign: TextAlign.center,
              style: GoogleFonts.biryani(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
                // height: 1.2,
              ),
            ),
          ),
          Container(
              child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    launchWeb("https://www.instagram.com/pbonmars/");
                  },
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    launchWeb(
                        "https://www.linkedin.com/in/priyanshu-solanki-b5957b211/");
                  },
                  icon: Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    launchWeb("https://github.com/Pbonmars-20031006");
                  },
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    launchWeb(
                        "https://drive.google.com/file/d/1ZOI3f-pZUEL2nARK_u6Eub1-kE3jCevg/view?usp=sharing");
                  },
                  icon: Icon(
                    FontAwesomeIcons.googleDrive,
                    color: Colors.white,
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
