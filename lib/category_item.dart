import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({ Key? key }) : super(key: key);
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
