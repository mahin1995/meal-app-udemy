import 'package:flutter/material.dart';

class CatagoriesScreeen extends StatelessWidget {
  const CatagoriesScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisExtent: 20),
      children: <Widget>[],
    );
  }
}
