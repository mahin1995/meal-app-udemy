import 'package:flutter/material.dart';


class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  const CategoryMealsScreen(this.categoryId,this.categoryTitle);
  /// const CategoryMealsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: Center(
        child:Text("The Meal screan")
      ),
    ));
  }
}