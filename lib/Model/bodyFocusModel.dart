import 'dart:convert';

class BodyFocusModel {
  String? image;
  String? name;
  BodyFocusModel({this.image, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
    };
  }

  factory BodyFocusModel.fromMap(Map<String, dynamic> map) {
    return BodyFocusModel(
        image: map['image'] as String, name: map['name'] as String);
  }

  String toJson() => json.encode(toMap());

  factory BodyFocusModel.fromJson(String source) =>
      BodyFocusModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<BodyFocusModel> bodyfocusitems = [
  BodyFocusModel(image: "assets/images/Chest.png", name: "Chest"),
  BodyFocusModel(
      image: "assets/images/Arm & Shoulder.png", name: "Arm & Shoulder"),
  BodyFocusModel(image: "assets/images/Butt & Leg.png", name: "Butt & Leg"),
  BodyFocusModel(image: "assets/images/Six pack.png", name: "Six pack")
];
