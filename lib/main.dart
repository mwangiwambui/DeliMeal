import 'package:flutter/material.dart';
import 'file:///C:/Users/Wambui/AndroidStudioProjects/meal_data/lib/screens/category_Screen.dart';
import 'file:///C:/Users/Wambui/AndroidStudioProjects/meal_data/lib/screens/category_meals_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.purple[900],
        accentColor: Colors.black,
        primaryColorLight: Colors.purple[100],
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
                fontSize: 21,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold
            ))
    ),
    darkTheme: ThemeData(
      primaryColor: Colors.purple[900],
      accentColor: Colors.black,
      primaryColorLight: Colors.purple[100],
      canvasColor: Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
        ),
        bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
        ),
        headline6: TextStyle(
          fontSize: 21,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold
        ))
    ),
//    home: CategoriesScreen(),
//    setting the inital route
    initialRoute: '/',
    routes: {
      '/' : (ctx) => CategoriesScreen(),
      CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
    },
  ));
}
