import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:fruit_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class ForgetPasswordSecondView extends StatelessWidget {
  const ForgetPasswordSecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Fruit Market',
                style: TextStyle(
                  color: pColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Enter Received OTP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Align(alignment: Alignment.topLeft, child: Text('Phone Number *')),
            SizedBox(height: 5),
            CustomTextFormField(
              hintText: 'Mobile Number',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: CustomButton(
                text: 'Confirm',
                color: Colors.white,
                buttonColor: pColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
