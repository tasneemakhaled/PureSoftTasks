import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class CheckoutError extends StatelessWidget {
  const CheckoutError({super.key});

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
          Center(child: Image.asset('assets/images/error.png')),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          Center(
            child: Text(
              'OPS',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          Text('Error while confirming your payment/order'),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * (3.2 / 4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text('Back', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
