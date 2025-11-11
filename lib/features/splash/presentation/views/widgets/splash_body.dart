import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/widgets/info_widget.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        double height = deviceInfo.localHeight;
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height * 0.1),
            Image.asset('assets/images/text.png'),
            Image.asset('assets/images/fruit.png'),
          ],
        );
      },
    );
  }
}
