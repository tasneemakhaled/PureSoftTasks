import 'package:flutter/material.dart';

import 'package:fruit_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: OnboardingViewBody()));
  }
}

// import 'package:flutter/material.dart';
// import 'package:fruit_app/core/utils/constants.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardingView extends StatefulWidget {
//   const OnboardingView({super.key});

//   @override
//   State<OnboardingView> createState() => _OnboardingViewState();
// }

// class _OnboardingViewState extends State<OnboardingView> {
//   final PageController controller = PageController();

//   List<String> titles = ['E Shopping', 'Best Quality', 'Fast Delivery'];
//   List<String> subTitles = [
//     'Explore top organic fruits & grab them',
//     'We ensure the best quality fruits for you',
//     'Order is arrived at your place',
//   ];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             // زر Skip في الأعلى
//             Padding(
//               padding: const EdgeInsets.only(top: 10, right: 20),
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {
//                     controller.jumpToPage(2); // يروح لآخر صفحة
//                   },
//                   child: const Text(
//                     'Skip',
//                     style: TextStyle(
//                       color: Color(0xff656565),
//                       fontSize: 15,
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             // PageView لعرض كل شاشة
//             Expanded(
//               child: PageView.builder(
//                 controller: controller,
//                 onPageChanged: (index) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//                 itemCount: titles.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset('assets/images/onboarding.png', height: 250),

//                       const SizedBox(height: 30),

//                       Text(
//                         titles[index],
//                         style: const TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),

//                       const SizedBox(height: 10),

//                       Text(
//                         subTitles[index],
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),

//             // المؤشر السفلي
//             SmoothPageIndicator(
//               controller: controller,
//               count: titles.length,
//               effect: const WormEffect(
//                 dotHeight: 12,
//                 dotWidth: 12,
//                 spacing: 16,
//                 activeDotColor: Color(0xff004d40),
//                 dotColor: Color(0xffa7d7c5),
//               ),
//             ),

//             const SizedBox(height: 25),

//             ElevatedButton(
//               style: ElevatedButton.styleFrom(backgroundColor: pColor),
//               onPressed: () {
//                 if (currentIndex < 2) {
//                   controller.nextPage(
//                     duration: const Duration(milliseconds: 400),
//                     curve: Curves.easeInOut,
//                   );
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("Onboarding Completed!")),
//                   );
//                 }
//               },
//               child: Text(
//                 currentIndex == 2 ? 'Get Started' : 'Next',
//                 style: const TextStyle(color: Colors.white),
//               ),
//             ),

//             const SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }
