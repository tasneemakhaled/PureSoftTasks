import 'package:flutter/material.dart';
import 'package:fruit_app/features/SellerStore/presentation/views/seller_store.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/custom_seller.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/firstPhoto.png'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/resturants.png'),
                Image.asset('assets/images/farms.png'),
                Image.asset('assets/images/coffee.png'),
                Image.asset('assets/images/pharmasy.png'),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sellers', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Show All', style: TextStyle(color: Colors.blue)),
              ],
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SellerStore();
                    },
                  ),
                );
              },
              child: CustomSeller(),
            ),

            CustomSeller(),
          ],
        ),
      ),
    );
  }
}
