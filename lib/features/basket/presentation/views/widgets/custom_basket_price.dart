import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/features/checkout/presentation/views/checkout_view.dart';

class CustomBasketPrice extends StatelessWidget {
  const CustomBasketPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ), // Added horizontal padding
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the start
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 20,
          ), // Reduced spacing
          SizedBox(
            width: double.infinity,
            child: const DottedLine(
              dashColor: Colors.grey,
              lineThickness: 2,
              dashLength: 6,
              dashGapLength: 4,
              direction: Axis.horizontal,
            ),
          ),
          SizedBox(height: 16), // Added spacing below the dotted line
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(fontSize: 16),
              ), // Added font size
              Text(
                '36.00 KD',
                style: TextStyle(fontSize: 16),
              ), // Added font size
            ],
          ),
          SizedBox(height: 8), // Added spacing between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping Charges',
                style: TextStyle(fontSize: 16),
              ), // Added font size
              Text(
                '1.50 KD',
                style: TextStyle(fontSize: 16),
              ), // Added font size
            ],
          ),
          SizedBox(height: 8), // Added spacing between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bag Total',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ), // Bold and font size
              Text(
                '37.50 KD',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ), // Bold and font size
            ],
          ),
          SizedBox(height: 24), // Added more spacing before the final row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    '4 items in cart',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ), // Smaller and grey
                  Text(
                    '37.50 KD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pColor,
                    ),
                  ), // Larger, bold, and primary color
                ],
              ),
              SizedBox(
                width: 185,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: pColor,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return CheckoutView();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Proceed to checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      // Added font size
                    ),
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
