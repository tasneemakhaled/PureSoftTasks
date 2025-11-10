import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/features/checkout/presentation/views/widgets/address_widget.dart';
import 'package:fruit_app/features/checkout/presentation/views/widgets/payment_widget.dart';
import 'package:fruit_app/features/checkout/presentation/views/widgets/time_widget.dart';

class CheckoutHeader extends StatefulWidget {
  const CheckoutHeader({super.key});

  @override
  State<CheckoutHeader> createState() => _CheckoutHeaderState();
}

class _CheckoutHeaderState extends State<CheckoutHeader> {
  bool isTimeSelected = false;

  bool isAddressSelected = false;

  bool isPaymentSelected = false;
  Widget? selectedWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                isTimeSelected = !isTimeSelected;

                selectedWidget = TimeWidget();
                isPaymentSelected = false;
                isAddressSelected = false;
                setState(() {});
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Center(
                  child: Container(
                    width: isTimeSelected ? 8 : 0,
                    height: isTimeSelected ? 8 : 0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 3,
              dashLength: 8,
              lineLength: 130,
              direction: Axis.horizontal,
            ),
            InkWell(
              onTap: () {
                isAddressSelected = !isAddressSelected;
                selectedWidget = AddressWidget();
                isTimeSelected = false;
                isPaymentSelected = false;
                setState(() {});
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Center(
                  child: Container(
                    width: isAddressSelected ? 8 : 0,
                    height: isAddressSelected ? 8 : 0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 3,
              dashLength: 8,
              lineLength: 130,
              direction: Axis.horizontal,
            ),
            InkWell(
              onTap: () {
                isPaymentSelected = !isPaymentSelected;
                selectedWidget = PaymentWidget();
                isAddressSelected = false;
                isTimeSelected = false;
                setState(() {});
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Center(
                  child: Container(
                    width: isPaymentSelected ? 8 : 0,
                    height: isPaymentSelected ? 8 : 0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        selectedWidget ?? SizedBox(),
      ],
    );
  }
}
