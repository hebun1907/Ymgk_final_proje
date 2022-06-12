// @dart=2.9
class CategoryPart {
  String name;
  String imgName;
  bool isSelected = false;
  String konu;

  CategoryPart({this.name, this.imgName, this.isSelected,this.konu});

  factory CategoryPart.fromJson(Map<String, dynamic> json) {
    return CategoryPart(
        name: json['name'], imgName: json['imgName'], isSelected: false,konu:json['konu']);
  }

  static List<CategoryPart> fromJsonArray(List<dynamic> jsonParts) {
    List<CategoryPart> parts = [];

    jsonParts.forEach((jsonData) {
      parts.add(CategoryPart.fromJson(jsonData));
    });

    return parts;
  }
}
