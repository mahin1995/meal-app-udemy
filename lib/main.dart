import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screen/filters_screen.dart';
import './screen/tabs_screen.dart';
import './screen/category_meals_screen.dart';

import './screen/categories_screen.dart';
import './screen/meal_detail_screen.dart';
import './models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if ((_filters['gluten'] == true ? true : false) && !meal.isGlutenFree) {
          return false;
        }
        if ((_filters['lactos'] == true ? true : false) && !meal.isLactoseFree) {
          return false;
        }
        if ((_filters['vegan'] == true ? true : false) && !meal.isVegan) {
          return false;
        }
        if ((_filters['vegetarian'] == true ? true : false) && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

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
            title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold)),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(_filters, _setFilters),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        print(settings.name);

        /// if(settings.name=='//meals-detail'){

        ///   return ;
        /// }
        ///return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());//if any page route not match
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen()); //if app cash or any thing this randare
      },
    );
  }
}
