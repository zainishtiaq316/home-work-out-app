import 'dart:convert';

class StretchModel {
  String? name;
  String? image;
  StretchModel({this.image, this.name});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
    };
  }

  factory StretchModel.fromMap(Map<String, dynamic> map) {
    return StretchModel(
        image: map['image'] as String, name: map['name'] as String);
  }

  String toJson() => json.encode(toMap());

  factory StretchModel.fromJson(String source) =>
      StretchModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<StretchModel> stretchItems = [
  StretchModel(
      name: "Full body stretching",
      image: "assets/images/Full body stretching.jpg"),
  StretchModel(
      name: "Shoulder tension relief",
      image: "assets/images/Shoulder tension relief.jpg"),
  StretchModel(
      name: "Morning warm up", image: "assets/images/Morning warm up.jpg"),
  StretchModel(
      name: "Sleepy time stretching",
      image: "assets/images/Sleepy time stretching.jpg"),
  StretchModel(
      name: "Neck & shoulder tension relief",
      image: "assets/images/Neck & shoulder tension relief.jpg"),
  StretchModel(
      name: "Knee pain relief", image: "assets/images/Knee pain relief.jpg"),
  StretchModel(
      name: "Upper body stretching",
      image: "assets/images/Upper body stretching.jpg"),
  StretchModel(
      name: "Lower back pain relief",
      image: "assets/images/Lower back pain relief.jpg"),
  StretchModel(
      name: "Lower body stretching 7 min",
      image: "assets/images/Lower body stretching 7 min.jpg"),
  StretchModel(
      name: "Back stretching 7 min",
      image: "assets/images/Back stretching 7 min.jpg"),
];
