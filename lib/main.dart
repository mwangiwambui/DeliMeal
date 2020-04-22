import 'package:flutter/material.dart';
import 'package:mealdata/screens/category_Screen.dart';
import 'package:mealdata/screens/category_Screen.dart';
import 'package:mealdata/screens/category_meals_screen.dart';
import 'package:mealdata/screens/meal_detail_screen.dart';
import 'package:mealdata/screens/settings_screen.dart';
import 'package:mealdata/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten' : false,
    'lactose' : false,
    'vegan' : false,
    'vegetarian' : false,
  };

  void _setFilters(Map<String, bool> filterData){
    setState(() {
      _filters = filterData;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.purple[900],
          accentColor: Colors.black,
          primaryColorLight: Colors.purple[100],
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                  fontSize: 21,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      darkTheme: ThemeData(
          primaryColor: Colors.purple[900],
          accentColor: Colors.black,
          primaryColorLight: Colors.purple[100],
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                  fontSize: 21,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
//    home: CategoriesScreen(),
//    setting the inital route
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(_setFilters),
      },
//    reached when flutter fails to reach a screen, its like a 404 fallback page
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
