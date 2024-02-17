import 'package:flutter/material.dart';

class DietModel{
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor ,
    required this.viewIsSelected
  });

  static List <DietModel> getDiets(){
    List <DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/pie.png',
        level: 'Easy',
        duration: ' 30mins',
        calorie: '180kCal',
        boxColor: Color(0xff92A3FD),
        viewIsSelected: true
      )

    );

    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/Search.png',
        level: 'medium',
        duration: ' 10mins',
        calorie: '180kCal',
        boxColor: Color(0xffc588F2),
        viewIsSelected: true));

    diets.add(
        DietModel(
          name: 'Honey Pancake',
          iconPath: 'assets/icons/pancakes.png',
          level: 'easy',
          duration: ' 20mins',
          calorie: '180kCal',
          boxColor: Color(0xffc588F2),
          viewIsSelected: true));

      diets.add(
        DietModel(
          name: 'Honey Pancake',
          iconPath: 'assets/icons/blueberry-pancake.png',
          level: 'hard',
          duration: ' 39mins',
          calorie: '180kCal',
          boxColor: Color(0xffc588F2),
          viewIsSelected: true));


    return diets;
  }
}