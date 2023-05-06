import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomSection4 extends StatefulWidget {
  const BottomSection4({super.key});

  @override
  State<BottomSection4> createState() => _BottomSection4State();
}

Future launchWeb(url1) async {
  // const url = "https://www.thebiggerstory.co.in/weekend-story";
  // ignore: deprecated_member_use
  if (await canLaunch(url1)) {
    await launch(url1);
  } else {
    const Text("Error");
  }
}

class _BottomSection4State extends State<BottomSection4> {
  bool? tap = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.01),
            DelayedWidget(
              delayDuration: const Duration(seconds: 3), // Not required
              animationDuration: const Duration(seconds: 1), // Not required
              animation: DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "My Projects And Startups",
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'italian',
                        fontSize: screenSize.height * 0.05),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
            SizedBox(
                height: kIsWeb
                    ? screenSize.height * 0.01
                    : screenSize.width * 0.01),
            CarouselSlider(
              options: CarouselOptions(
                height:
                    kIsWeb ? screenSize.height * 0.4 : screenSize.width * 0.6,
                //aspectRatio: 4 / 5,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                screenSize.height < 800
                    ? GlassmorphicContainer(
                        width: kIsWeb
                            ? screenSize.width * 0.3
                            : screenSize.width * 0.7,
                        height: kIsWeb
                            ? screenSize.height * 0.4
                            : screenSize.height * 0.8,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFf240032),
                              const Color(0xFFf240032),
                            ],
                            stops: const [
                              0.1,
                              1,
                            ]),
                        borderGradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(0, 255, 255, 255),
                            Color.fromARGB(0, 255, 255, 255),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  AutoSizeText(
                                    'Project 1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Biryani',
                                        fontSize: kIsWeb
                                            ? screenSize.height * 0.03
                                            : 10),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        launchWeb(
                                            "https://github.com/Pbonmars-20031006/IRIS_2022_Priyanshu_BHandari_211EC136");
                                      },
                                      icon: Icon(FontAwesomeIcons.github,
                                          color: Colors.white, size: 15))
                                ],
                              ),
                              AutoSizeText("HelathifyMe",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'italian',
                                    fontSize:
                                        kIsWeb ? screenSize.height * 0.04 : 20,
                                  )),
                              SizedBox(
                                height: screenSize.height * 0.001,
                              ),
                              Container(
                                height: screenSize.height * 0.2,
                                width: screenSize.width * 0.3,
                                decoration: BoxDecoration(
                                    color: Color(0xfffC8A2C8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: AutoSizeText(
                                        "An habit tracking app build for tracking you habits!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Biryani',
                                            fontSize: 3)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                      )
                    : GlassmorphicContainer(
                        width: kIsWeb
                            ? screenSize.width * 0.3
                            : screenSize.width * 0.7,
                        height: kIsWeb
                            ? screenSize.height * 0.4
                            : screenSize.height * 0.8,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFf240032),
                              const Color(0xFFf240032),
                            ],
                            stops: const [
                              0.1,
                              1,
                            ]),
                        borderGradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(0, 255, 255, 255),
                            Color.fromARGB(0, 255, 255, 255),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  AutoSizeText(
                                    'Project 1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Biryani',
                                        fontSize: kIsWeb
                                            ? screenSize.height * 0.03
                                            : 10),
                                  ),
                                ],
                              ),
                              AutoSizeText("HelathifyMe",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'italian',
                                    fontSize:
                                        kIsWeb ? screenSize.height * 0.04 : 20,
                                  )),
                              SizedBox(
                                height: screenSize.height * 0.01,
                              ),
                              Container(
                                height: screenSize.height * 0.1,
                                width: screenSize.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Color(0xfffC8A2C8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: AutoSizeText(
                                        "An habit tracking app build for tracking you habits!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Biryani',
                                            fontSize: 3)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height * 0.02,
                              ),
                              IconButton(
                                  onPressed: () {
                                    launchWeb(
                                        "https://github.com/Pbonmars-20031006/IRIS_2022_Priyanshu_BHandari_211EC136");
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                  ))
                            ],
                          )),
                        ),
                      ),
                GlassmorphicContainer(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFf240032),
                        const Color(0xFFf240032),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            AutoSizeText(
                              'Project 2',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Biryani'),
                            ),
                          ],
                        ),
                        AutoSizeText("My Shop",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 30,
                            )),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Container(
                          height: screenSize.height * 0.1,
                          width: screenSize.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xfffC8A2C8),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText("A simple shopping app !",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Biryani',
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        IconButton(
                            onPressed: () {
                              launchWeb(
                                  "https://github.com/Pbonmars-20031006/My-Shop");
                            },
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ))
                      ],
                    )),
                  ),
                ),
                GlassmorphicContainer(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFf240032),
                        const Color(0xFFf240032),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            AutoSizeText(
                              'Project 3',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'biryani'),
                            ),
                          ],
                        ),
                        AutoSizeText("My Portfolio",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 30,
                            )),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Container(
                          height: screenSize.height * 0.1,
                          width: screenSize.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xfffC8A2C8),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                  "A Web App created using flutter!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Biryani',
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        IconButton(
                            onPressed: () {
                              launchWeb(
                                  "https://github.com/Pbonmars-20031006/Myportfolio");
                            },
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ))
                      ],
                    )),
                  ),
                ),
                GlassmorphicContainer(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFf240032),
                        const Color(0xFFf240032),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            AutoSizeText(
                              'Project 4',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Biryani'),
                            ),
                          ],
                        ),
                        AutoSizeText("UPI-X",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 30,
                            )),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Container(
                          height: screenSize.height * 0.1,
                          width: screenSize.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xfffC8A2C8),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                  "A UPI payments app (NOT COMPLETE YET)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Biryani',
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.018,
                        ),
                        IconButton(
                            onPressed: () {
                              launchWeb(
                                  "https://github.com/Pbonmars-20031006/UPIX-APP");
                            },
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ))
                      ],
                    )),
                  ),
                ),
                GlassmorphicContainer(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFf240032),
                        const Color(0xFFf240032),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            AutoSizeText(
                              'Startup',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Biryani'),
                            ),
                          ],
                        ),
                        AutoSizeText("Weekend Story",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 30,
                            )),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Container(
                          height: screenSize.height * 0.1,
                          width: screenSize.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xfffC8A2C8),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                  "A SaaS app with more than 2k+ downloads!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Biryani',
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    launchWeb(
                                        "https://play.google.com/store/apps/details?id=com.sitesurface.weekend_story");
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.appStore,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    launchWeb(
                                        "https://play.google.com/store/apps/details?id=com.sitesurface.weekend_story");
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.googlePlay,
                                    color: Colors.white,
                                  )),
                            ]),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
