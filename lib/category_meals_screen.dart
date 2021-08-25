import 'package:flutter/material.dart';
import 'package:meal_app_udemy/category_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryId,this.categoryTitle);
  /// const CategoryMealsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(child: Text("The Meal screan")),
    ));
  }
}
