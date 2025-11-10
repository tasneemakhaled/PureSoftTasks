import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/success.png'),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          Center(
            child: Text(
              'YOUR ORDER IS CONFIRMED!',
              style: TextStyle(
                color: pColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Text('''Your order code: #243188  
 Thank you for choosing our products!'''),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * (3.4 / 4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: pColor),
              onPressed: () {},
              child: Text(
                'Continue Shopping',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * (3.4 / 4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.black),
              ),
              onPressed: () {},
              child: Text('Track Order', style: TextStyle(color: pColor)),
            ),
          ),
        ],
      ),
    );
  }
}
