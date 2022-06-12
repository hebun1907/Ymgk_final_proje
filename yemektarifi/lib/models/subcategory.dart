// @dart=2.9
import 'dart:ui';


import 'package:yemektarifi/models/category.dart';
import 'package:yemektarifi/models/categorypart.dart';

class SubCategory extends Category{
   List<CategoryPart> parts;
  SubCategory({
    this.parts,
    String name,
    String icon,
    Color color,
    String imgName 
  }): super(
    name: name,
    icon: icon,
    color: color,
    imgName: imgName
  );

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      
     
      name: json['name'],
      imgName: json['imgName'],
      color: Color(int.parse('0xFF' + json['color'])),
      icon: json['icon'],
      
      parts: CategoryPart.fromJsonArray(json['parts'])
    );
  }

  static List<SubCategory> fromJsonArray(List<dynamic> jsonArray) {
    List<SubCategory> subCategoriesFromJson = [];

    jsonArray.forEach((jsonData) {
      subCategoriesFromJson.add(SubCategory.fromJson(jsonData));
    });

    return subCategoriesFromJson;
  }
}