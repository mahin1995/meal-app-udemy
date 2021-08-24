import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';


class CatagoriesScreeen extends StatelessWidget {
  // const CatagoriesScreeen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Deli Meals'), ),
      body: GridView(
        padding: EdgeInsets.all(10),
         children:DUMMY_CATEGORIES.map((catData)=>CategoryItem(catData.title,catData.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisExtent: 20),
   
    ),
    );
  }
}
