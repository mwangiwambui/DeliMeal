import 'package:flutter/material.dart';
import 'package:mealdata/category_Screen.dart';

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
    home: CategoriesScreen(),
  ));
}
