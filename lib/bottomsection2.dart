import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomSection2 extends StatefulWidget {
  const BottomSection2({super.key});

  @override
  State<BottomSection2> createState() => _BottomSection2State();
}

class _BottomSection2State extends State<BottomSection2> {
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

                  child: DelayedWidget(
                    delayDuration: const Duration(seconds: 2), // Not required
                    animationDuration:
                        const Duration(seconds: 1), // Not required
                    animation:
                        DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          '"I have helped building Weekend Story"', // have realtime experience of deploying, testing and debugging realtime apps. Helped building Weekend Story a SaaS app with over 2k+ downloads" ',
                          //textAlign: TextAlign.center,
                          textStyle: TextStyle(
                            fontFamily: 'italian',
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.w800,
                            //height: 1.2,
                          ),
//
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: false,
                      totalRepeatCount: 1,
                    ),
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
