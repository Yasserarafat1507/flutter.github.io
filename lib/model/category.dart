import 'package:flutter/material.dart';

class CategoryModels {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModels({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
}

var Category = [
    CategoryModels(
        name: 'Pisang',
        iconPath: 'assets/img/iconp.jpg',
        boxColor: Color(0xffDDDADA)
      ),

      CategoryModels(
        name: 'Nanas',
        iconPath: 'assets/img/iconn.jpg',
        boxColor: Color(0xffDDDADA)
      ),

      CategoryModels(
        name: 'Mangga',
        iconPath: 'assets/img/iconm.jpg',
        boxColor: Color(0xffDDDADA)
      ),

      CategoryModels(
        name: 'Jambu Air',
        iconPath: 'assets/img/iconj.jpg',
        boxColor: Color(0xffDDDADA)
      ),

      CategoryModels(
        name: 'Durian',
        iconPath: 'assets/img/icond.jpg',
        boxColor: Color(0xffDDDADA)
      ),

      CategoryModels(
        name: 'Papaya',
        iconPath: 'assets/img/icona.jpg',
        boxColor: Color(0xffDDDADA)
      ),

];
