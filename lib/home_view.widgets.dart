part of 'home_view.dart';

class OverlayTextSection extends StatelessWidget {
  OverlayTextSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kIsWeb ? screenSize.height : screenSize.width,
      width: kIsWeb ? screenSize.width : screenSize.height,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 100,
                  child: DelayedWidget(
                    delayDuration:
                        const Duration(milliseconds: 100), // Not required
                    animationDuration:
                        const Duration(seconds: 0), // Not required
                    animation:
                        DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
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
                              fontSize: screenSize.height * 0.032,
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
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: screenSize.height * 0.7,
                  width: screenSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DelayedWidget(
                        delayDuration:
                            const Duration(milliseconds: 100), // Not required
                        animationDuration:
                            const Duration(seconds: 1), // Not required
                        animation:
                            DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                        child: AutoSizeText(
                          'Hey there,',
                          // textAlign: TextAlign.left,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: kIsWeb
                                  ? screenSize.height * 0.08
                                  : screenSize.width * 0.001),
                          // speed: const Duration(milliseconds: 30)
                        ),
                      ),
                      DelayedWidget(
                        delayDuration:
                            const Duration(milliseconds: 700), // Not required
                        animationDuration:
                            const Duration(seconds: 1), // Not required
                        animation:
                            DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                        child: AutoSizeText(
                          "I'm Priyanshu Solanki",
                          //textAlign: TextAlign.left,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: screenSize.height * 0.07),
                          //speed: const Duration(milliseconds: 30)
                        ),
                      ),
                      DelayedWidget(
                        delayDuration:
                            const Duration(milliseconds: 1000), // Not required
                        animationDuration:
                            const Duration(seconds: 1), // Not required
                        animation:
                            DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                        child: AutoSizeText(
                          'A Sophmore ',
                          //extAlign: TextAlign.center,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: screenSize.height * 0.06),
                          // speed: const Duration(milliseconds: 30)
                        ),
                      ),
                      DelayedWidget(
                        delayDuration:
                            const Duration(milliseconds: 2000), // Not required
                        animationDuration:
                            const Duration(seconds: 1), // Not required
                        animation:
                            DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                        child: AutoSizeText(
                          "at National Institute of Technology, Karnataka",
                          //textAlign: TextAlign.center,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: screenSize.height * 0.04),
                          //speed: const Duration(milliseconds: 30)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenSize.height * 0.1,
            right: screenSize.width * 0.1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.topLeft,
                height: 100,
                child: DelayedWidget(
                  delayDuration:
                      const Duration(milliseconds: 100), // Not required
                  animationDuration: const Duration(seconds: 3), // Not required
                  animation:
                      DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                  child:
                      // onFinished: () {
                      //   navigate(context, const InfinityProfiles());

                      AutoSizeText(
                    'My Portfolio',
                    textAlign: TextAlign.center,
                    //textStyle: colorizeTextStyle,

                    style: TextStyle(
                        fontFamily: 'italian',
                        fontSize: screenSize.height * 0.1,
                        color: Colors.white),
                    //duration: const Duration(milliseconds: 300),

                    //totalRepeatCount: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
