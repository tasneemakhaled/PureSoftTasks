import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class WayOfPayement extends StatefulWidget {
  const WayOfPayement({super.key});

  @override
  State<WayOfPayement> createState() => _WayOfPayementState();
}

class _WayOfPayementState extends State<WayOfPayement> {
  bool isCash = false;

  bool isCredit = false;

  bool isKnet = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/credit.png'),
                      Text('  Credit Card/Debit card'),
                    ],
                  ),

                  InkWell(
                    onTap: () {
                      isCredit = true;
                      isCash = false;
                      isKnet = false;
                      setState(() {});
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: pColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),

                      child: isCredit
                          ? Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            )
                          : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/cashe.png'),
                      Text('  Cash of Delivery'),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      isCash = true;
                      isCredit = false;
                      isKnet = false;
                      setState(() {});
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: pColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),

                      child: isCash
                          ? Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            )
                          : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/knet.png'),
                      Text('  Knet'),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      isKnet = true;
                      isCredit = false;
                      isCash = false;
                      setState(() {});
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: pColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),

                      child: isKnet
                          ? Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            )
                          : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: MediaQuery.sizeOf(context).height / 10),
        ],
      ),
    );
  }
}
