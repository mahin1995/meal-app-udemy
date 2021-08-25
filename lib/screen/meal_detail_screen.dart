import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {

  const MealDetailScreen({ Key? key }) : super(key: key);
static const routeName = '/meals-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
 

    print(mealId);

    return Scaffold(
      appBar: AppBar(title: Text(' Detail screen'),),
      body: Center(child: Text("$mealId Screen"),),
    );
  }
}