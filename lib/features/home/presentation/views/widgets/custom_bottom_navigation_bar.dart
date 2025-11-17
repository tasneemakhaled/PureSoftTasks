import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/features/basket/presentation/views/basket_view.dart';
import 'package:fruit_app/features/favourite/presentation/views/favourite_view.dart';
import 'package:fruit_app/features/home/presentation/views/home_view.dart';
import 'package:fruit_app/features/orders/presentation/views/orders_view.dart';
import 'package:fruit_app/features/setting/presentation/views/setting_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _NavBarSectionState();
}

class _NavBarSectionState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  // Remove the late keyword and don't initialize in initState
  List<Widget> _buildPages() {
    return [
      HomeView(),
      OrdersView(),
      BasketView(),
      FavouriteView(),
      SettingView(
        onNavItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;

    // Build pages on each rebuild
    final pages = _buildPages();

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: pColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
          ],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.01,
        ),
        child: GNav(
          gap: width * 0.02,
          activeColor: pColor,
          color: Colors.white,
          iconSize: height * 0.03,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.02,
            vertical: height * 0.01,
          ),
          duration: const Duration(milliseconds: 400),
          backgroundColor: pColor,
          tabBackgroundColor: Colors.white,
          selectedIndex: currentIndex,
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabs: [
            _buildNavItem(Icons.home, "Home", width, height, orientation),
            _buildNavItem(
              Icons.format_list_numbered,
              "Orders",
              width,
              height,
              orientation,
            ),
            _buildNavItem(
              Icons.shopping_basket_outlined,
              "Basket",
              width,
              height,
              orientation,
            ),
            _buildNavItem(
              Icons.favorite_border,
              "Favorite",
              width,
              height,
              orientation,
            ),
            _buildNavItem(Icons.menu, "More", width, height, orientation),
          ],
        ),
      ),
    );
  }

  GButton _buildNavItem(
    IconData icon,
    String label,
    double width,
    double height,
    Orientation orientation,
  ) {
    return GButton(
      icon: icon,
      text: label,
      iconSize: orientation == Orientation.portrait
          ? height * 0.03
          : width * 0.04,
      textStyle: TextStyle(
        fontSize: orientation == Orientation.portrait
            ? width * 0.035
            : width * 0.02,
        color: pColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
