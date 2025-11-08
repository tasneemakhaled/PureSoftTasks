import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/features/SellerStore/presentation/views/seller_store.dart';
import 'package:fruit_app/features/basket/presentation/views/basket_view.dart';
import 'package:fruit_app/features/favourite/presentation/views/favourite_view.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/custom_seller.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:fruit_app/features/orders/presentation/views/orders_view.dart';
import 'package:fruit_app/features/search/presentation/views/search_view.dart';
import 'package:fruit_app/features/setting/presentation/views/setting_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
        ],
        title: Text(
          'Fruit Market',
          style: TextStyle(
            color: pColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: HomeBody(),
    );
  }
}
