import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset(
                'assets/images/vegetables.png',
                height: 80,
                width: 80,
              ),
            ),
            Column(
              children: [
                Text(
                  'Product name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(' 12 KD'),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffDF958F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Up to 10% Off',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/cart.png'),
          ],
        ),
      ),
    );
  }
}
