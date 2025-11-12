import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';
import 'package:fruit_app/features/favourite/presentation/views/favourite_view.dart';
import 'package:fruit_app/features/orders/presentation/views/orders_view.dart';
import 'package:fruit_app/features/setting/presentation/views/contact_view.dart';
import 'package:fruit_app/features/setting/presentation/views/profile_view.dart';
import 'package:fruit_app/features/setting/presentation/views/terms_and_conditions.dart';
import 'package:fruit_app/features/setting/presentation/views/widgets/language_dialogue.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fruit Market',
          style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.account_circle,
              color: Colors.grey.shade300,
              size: 90,
            ),
          ),
          Text('Welcome, Fruit Market', style: TextStyle(fontSize: 24)),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileView();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.person),
            title: Text('Profile'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return OrdersView();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.format_list_bulleted),
            title: Text('My Orders'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FavouriteView();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.favorite_border_outlined),
            title: Text('Favourite'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LanguageDialog();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ContactView();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.support_agent),
            title: Text('Support'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return TermsAndConditions();
                  },
                ),
              );
            },
            minTileHeight: 30,
            leading: Icon(Icons.info_outline),
            title: Text('Terms and Conditions'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ListTile(
            onTap: () {},
            minTileHeight: 30,
            leading: Icon(Icons.question_answer_outlined),
            title: Text('About Us'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
