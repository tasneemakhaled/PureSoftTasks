import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Orders',
            style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
          ),
        ),
        body: Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 6,
                          spreadRadius: 1,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/order.png'),
                        Column(
                          children: [
                            Text('#243188 - 37 KD'),
                            Text('9 Sep'),
                            Text('Status : Delivering'),
                          ],
                        ),
                        Image.asset('assets/images/delivering.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
