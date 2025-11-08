import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:fruit_app/core/utils/constants.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String? selectedWeight;
  String? selectedAddons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(FeatherIcons.share)),
        ],
        title: Text(
          'Fruit Market',
          style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                // alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/images/fruit_shop.png'),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('10 % Off Discount'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Category Name',
                      style: TextStyle(
                        color: pColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Price', style: TextStyle()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Product Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'KD1200',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 8),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'KD1400',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                style: TextStyle(color: Colors.grey),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sell Per : Kartoon',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ExpansionTile(
                title: Text(
                  'Select Weight',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    leading: Radio<String>(
                      value: '50gram',
                      groupValue: selectedWeight,
                      onChanged: (value) {
                        setState(() {
                          selectedWeight = value;
                        });
                      },
                    ),
                    title: Text('50 Gram - 4.00 KD'),
                    onTap: () {
                      setState(() {
                        selectedWeight = '50gram';
                      });
                    },
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: '1kg',
                      groupValue: selectedWeight,
                      onChanged: (value) {
                        setState(() {
                          selectedWeight = value;
                        });
                      },
                    ),
                    title: Text('1 Kg - 6.25 KD'),
                    onTap: () {
                      setState(() {
                        selectedWeight = '1kg';
                      });
                    },
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: '2kg',
                      groupValue: selectedWeight,
                      onChanged: (value) {
                        setState(() {
                          selectedWeight = value;
                        });
                      },
                    ),
                    title: Text('2 Kg - 12.00 KD'),
                    onTap: () {
                      setState(() {
                        selectedWeight = '2kg';
                      });
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Select Addons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    leading: Radio<String>(
                      value: '50 Gram - 4.00 KD',
                      groupValue: selectedAddons,
                      onChanged: (value) {
                        setState(() {
                          selectedAddons = value;
                        });
                      },
                    ),
                    title: Text('50 Gram'),
                    onTap: () {
                      setState(() {
                        selectedAddons = '50 Gram';
                      });
                    },
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: '1 Kg',
                      groupValue: selectedAddons,
                      onChanged: (value) {
                        setState(() {
                          selectedAddons = value;
                        });
                      },
                    ),
                    title: Text('1 Kg - 6.25 KD'),
                    onTap: () {
                      setState(() {
                        selectedAddons = '1 Kg';
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
