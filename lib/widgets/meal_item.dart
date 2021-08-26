import 'package:flutter/material.dart';
import 'package:meal_app_udemy/screen/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  // const MealItem({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;
  MealItem(
      {required this.id,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.removeItem});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        // ignore: dead_code
        break;
      case Complexity.Challenging:
        return 'Challenging';
        // ignore: dead_code
        break;
      case Complexity.Hard:
        return 'Hard';
        // ignore: dead_code
        break;
      default:
        return "Unkown";
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        // ignore: dead_code
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        // ignore: dead_code
        break;
      case Affordability.Pricey:
        return 'Pricey';
        // ignore: dead_code
        break;
      default:
        return "Unkown";
    }
  }

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((value) {
      if (value != null) {
        removeItem(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 200,
                    // height: 100,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [Icon(Icons.schedule), Text('$duration min')],
                  ),
                  Row(
                    children: [Icon(Icons.work), Text(complexityText)],
                  ),
                  Row(
                    children: [Icon(Icons.attach_money), Text(affordabilityText)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
