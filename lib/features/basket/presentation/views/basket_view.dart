import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Basket',
          style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
