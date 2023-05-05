part of 'home_view.dart';

class OverlayTextSection extends StatelessWidget {
  OverlayTextSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
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
                              fontSize: 30,
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
                height: screenSize.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 0, 0, 0),
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
                        child: Text(
                          'Hey there,',
                          // textAlign: TextAlign.left,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 70),
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
                        child: Text(
                          "I'm Priyanshu Solanki",
                          //textAlign: TextAlign.left,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 60),
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
                        child: Text(
                          'A Sophmore ',
                          //extAlign: TextAlign.center,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 50),
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
                        child: Text(
                          "at National Institute of Technology, Karnataka",
                          //textAlign: TextAlign.center,
                          //textStyle: colorizeTextStyle,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'italian',
                              fontSize: 40),
                          //speed: const Duration(milliseconds: 30)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
