import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/core/utils/widgets/info_widget.dart';
import 'package:fruit_app/features/authentication/presentation/views/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        double height = deviceInfo.localHeight;
        double width = deviceInfo.localWidth;

        // تحديد إذا كانت الشاشة landscape
        bool isLandscape = width > height;

        // حساب responsive sizes
        double titleSize = isLandscape ? width * 0.06 : width * 0.08;
        double subtitleSize = isLandscape ? width * 0.04 : width * 0.05;
        double textSize = isLandscape ? width * 0.03 : width * 0.042;
        double iconSize = isLandscape ? 18.0 : 20.0;
        double buttonWidth = isLandscape ? width * 0.65 : width * 0.88;
        double buttonHeight = isLandscape ? height * 0.12 : height * 0.065;

        return SizedBox(
          height: deviceInfo.screenHeight,
          width: deviceInfo.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title Section
              Text(
                'Fruit Market',
                style: TextStyle(
                  color: pColor,
                  fontWeight: FontWeight.bold,
                  fontSize: titleSize,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Welcome To Our App',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: subtitleSize,
                ),
              ),
              SizedBox(height: isLandscape ? height * 0.02 : height * 0.035),

              // Buttons Section
              SizedBox(
                width: buttonWidth,
                height: buttonHeight,
                child: CustomButton(
                  buttonColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: iconSize,
                  ),
                  onPressed: () {},
                  text: 'Sign in with Phone Number',
                  textColor: Colors.black,
                ),
              ),
              SizedBox(height: isLandscape ? height * 0.01 : height * 0.015),
              SizedBox(
                width: buttonWidth,
                height: buttonHeight,
                child: CustomButton(
                  buttonColor: Colors.white,
                  onPressed: () {},
                  prefixIcon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                    size: iconSize,
                  ),
                  text: 'Sign in with Google',
                  textColor: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.015),
              SizedBox(
                width: buttonWidth,
                height: buttonHeight,
                child: CustomButton(
                  onPressed: () {},
                  buttonColor: Color(0xff1877F2),
                  prefixIcon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: iconSize,
                  ),
                  text: 'Sign in with Facebook',
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: isLandscape ? height * 0.015 : height * 0.025),

              // Footer Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already member? ',
                    style: TextStyle(fontSize: textSize, color: Colors.black87),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff1877F2),
                        fontSize: textSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.015),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continue you agree to our ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: textSize * 0.9,
                          height: 1.4,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of service',
                        style: TextStyle(
                          color: Color(0xff1877F2),
                          fontSize: textSize * 0.9,
                          height: 1.4,
                        ),
                      ),
                      TextSpan(
                        text: ' and our ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: textSize * 0.9,
                          height: 1.4,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy policy',
                        style: TextStyle(
                          color: Color(0xff1877F2),
                          fontSize: textSize * 0.9,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
