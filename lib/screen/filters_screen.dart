import 'package:flutter/material.dart';
import '../widgets/main_drwer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactosFree = false;

  Widget _buildSwitchListTitle(String title, String description, bool currentValue, updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: updateValue,
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("filter screen"),
        ),
        drawer: MainDrwer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Adjust your Meal selection.",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                _buildSwitchListTitle('Gluten free', "Only include gluten Free", _glutenFree, (bool newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTitle('Lactose-Free', "Only include Lactos-Free meals", _lactosFree, (bool newValue) {
                  setState(() {
                    _lactosFree = newValue;
                  });
                }),
                _buildSwitchListTitle('Vagetarian', "Only include Vagitarian meals", _vegetarian, (bool newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitchListTitle('Vegan', "Only include Vegan meals", _vegan, (bool newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
              ],
            ))
          ],
        ));
  }
}
