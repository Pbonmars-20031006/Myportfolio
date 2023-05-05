import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scroll_animations/bottom3.dart';
import 'package:scroll_animations/bottomsection.dart';
import 'package:scroll_animations/bottomsection2.dart';

part 'home_view.widgets.dart';

const overlayDescriptionText = '';
const backgroundImageUrl = 'https://source.unsplash.com/XO5qTnr0a50';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0XFFF6c33c8),
      //Color(0XFFF290924),
      backgroundColor: Colors.black,
      body: ScrollTransformView(
        children: [
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              return Container(
                decoration: BoxDecoration(
                    color: Color(0XFFF6c33c8),
                    borderRadius: BorderRadius.circular(20)),

                height: screenSize.height -
                    (screenSize.height * 0.2 * offScreenPercentage),
                width: screenSize.width -
                    (screenSize.width * 0.5 * offScreenPercentage),
                //backgroundImageUrl,
                //fit: BoxFit.cover,

                child: Image.asset(
                  'images/Subject1.JPG',
                  fit: BoxFit.cover,
                ),
              );
            },
            offsetBuilder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              final heightShrinkageAmount =
                  screenSize.height * 0.2 * offScreenPercentage;
              ;
              return Offset(0, scrollOffset + heightShrinkageAmount / 5);
            },
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return OverlayTextSection();
            },
            offsetBuilder: (scrollOffset) => Offset(0, -screenSize.height),
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              return Container(
                height: screenSize.height -
                    (screenSize.height * 0.2 * offScreenPercentage),
                width: screenSize.width, // -
                // (screenSize.width * 0.1 * offScreenPercentage),
                child: BottomSection(),
              );
            },
            offsetBuilder: (scrollOffset) {
              return Offset(0, -screenSize.height);
            },
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              return Container(
                height: screenSize.height -
                    (screenSize.height * 0.4 * offScreenPercentage),
                width: screenSize.width -
                    (screenSize.width * 0.1 * offScreenPercentage),
                child: BottomSection2(),
              );
            },
            offsetBuilder: (scrollOffset) {
              return Offset(
                  -screenSize.width + scrollOffset, -screenSize.height);
            },
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              return Container(
                height: screenSize.height -
                    (screenSize.height * 0.4 * offScreenPercentage),
                width: screenSize.width -
                    (screenSize.width * 0.1 * offScreenPercentage),
                child: BottomSection3(),
              );
            },
            offsetBuilder: (scrollOffset) {
              return Offset(
                  screenSize.width - scrollOffset, -screenSize.height);
            },
          ),
        ],
      ),
    );
  }
}
