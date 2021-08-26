import 'package:flutter/material.dart';
import '../screen/filters_screen.dart';

class MainDrwer extends StatelessWidget {
  // const MainDrwer({Key? key}) : super(key: key);
  Widget buildListTile(String title, IconData icon, VoidCallback tabHandaler) {
    return ListTile(
      onTap: tabHandaler,
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 10),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              // Navigator.of(context).pushNamed('/');
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Filter',
            Icons.settings,
            () {
              // Navigator.of(context).pushNamed(FilterScreen.routeName);
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
