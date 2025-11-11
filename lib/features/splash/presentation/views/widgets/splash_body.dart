import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/widgets/info_widget.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        double height = deviceInfo.localHeight;
        double width = deviceInfo.localWidth;

        return SizedBox(
          height: height,
          width: width,
          child: Image.asset('assets/images/splash.png', fit: BoxFit.fill),
        );
      },
    );
  }
}
