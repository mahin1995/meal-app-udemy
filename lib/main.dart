import 'package:flutter/material.dart';
import './screen/category_meals_screen.dart';

import './screen/categories_screen.dart';
import './screen/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold)),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute:(settings){
        // print(settings.arguments);
        print(settings.name);
        /// if(settings.name=='//meals-detail'){
         
        ///   return ;
        /// }
         ///return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());//if any page route not match

      } ,
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());//if app cash or any thing this randare
      },
    );
  }
}
