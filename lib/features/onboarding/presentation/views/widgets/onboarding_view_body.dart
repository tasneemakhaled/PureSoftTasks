import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/core/utils/widgets/info_widget.dart';
import 'package:fruit_app/features/authentication/presentation/views/welcome_view.dart';
import 'package:fruit_app/features/onboarding/presentation/view_models/onboarding_model.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int onChangedIndex = 0;

  PageController controller = PageController();

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: 'E Shopping',
      subTitle: 'Explore top organic fruits & grab them',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: 'Best Quality',
      subTitle: 'We ensure the best quality fruits for you',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding.png',
      title: 'Fast Delivery',
      subTitle: 'Order is arrived at your place',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        double height = deviceInfo.localHeight;
        double width = deviceInfo.localWidth;
        return Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeView();
                      },
                    ),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  onChangedIndex = index;
                  setState(() {});
                },
                controller: controller,
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Added for vertical centering
                    children: [
                      Image.asset(
                        pages[index].image,
                        height: height * 0.3, // Adjust image height dynamically
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ), // Increased space after image
                      Text(
                        pages[index].title,
                        style: TextStyle(
                          fontSize: width * 0.03, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ), // Space between title and subtitle
                      Text(
                        pages[index].subTitle,
                        textAlign: TextAlign.center, // Center align subtitle
                        style: TextStyle(
                          fontSize: width * 0.035, // Responsive font size
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ), // Increased space before dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(pages.length, (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01,
                            ), // Horizontal padding
                            child: AnimatedContainer(
                              // Use AnimatedContainer for smooth transition
                              duration: const Duration(milliseconds: 300),
                              width: onChangedIndex == index
                                  ? width *
                                        0.02 // Slightly larger for selected dot
                                  : width * 0.01,
                              height:
                                  height * 0.01, // Slightly larger dot height

                              decoration: BoxDecoration(
                                color: onChangedIndex == index
                                    ? pColor
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(
                                  height * 0.01,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ), // Increased space before button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: pColor,
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                width * 0.15, // Responsive button padding
                            vertical: height * 0.02,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              height * 0.01,
                            ), // Rounded corners for button
                          ),
                        ),
                        onPressed: () {
                          if (onChangedIndex < pages.length - 1) {
                            // Check against pages.length - 1
                            controller.nextPage(
                              duration: Duration(
                                milliseconds: 300,
                              ), // Smoother animation
                              curve: Curves.easeIn, // Smoother curve
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WelcomeView();
                                },
                              ),
                            );
                          }
                        },
                        child: Text(
                          onChangedIndex < pages.length - 1
                              ? 'Next'
                              : 'Get Started', // Dynamic button text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                width * 0.035, // Responsive button text size
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
