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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      onChangedIndex <= 1 ? 'Skip' : '',
                      style: TextStyle(color: Color(0xff656565)),
                    ),
                    SizedBox(height: 3),
                    onChangedIndex <= 1
                        ? Container(
                            width: 25,
                            height: 1.5,
                            color: Color(0xff656565),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 2,
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
                          fontSize: width * 0.04, // Responsive font size
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
                          fontSize: width * 0.04, // Responsive font size
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: height * 0.035),
                    ],
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pages.length, (index) {
                bool isActive = onChangedIndex == index;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8, // active = أطول شويه
                  height: 8, // كلهم نفس الارتفاع
                  decoration: BoxDecoration(
                    color: isActive ? pColor : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10), // دائري مظبوط
                  ),
                );
              }),
            ),

            SizedBox(height: height * 0.08), // Increased space before button
            SizedBox(
              height: height * 0.06, // 7% من ارتفاع الـ container
              width: width * 0.4, // 85% من عرض الـ container
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: pColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.08,
                    vertical: height * 0.015,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  if (onChangedIndex < pages.length - 1) {
                    controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeView()),
                    );
                  }
                },
                child: Text(
                  onChangedIndex < pages.length - 1 ? 'Next' : 'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04, // حجم خط مناسب
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
