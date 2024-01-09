import 'dart:convert';

class ChallengeModel {
  String? image;
  String? name;
  ChallengeModel({this.image, this.name});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
    };
  }

  factory ChallengeModel.fromMap(Map<String, dynamic> map) {
    return ChallengeModel(
        image: map['image'] as String, name: map['name'] as String);
  }

  String toJson() => json.encode(toMap());

  factory ChallengeModel.fromJson(String source) =>
      ChallengeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<ChallengeModel> challenngeItems = [
  ChallengeModel(
      image: "assets/images/Plank Challenge.png", name: "Plank Challenge"),
  ChallengeModel(
      image: "assets/images/Killer chest workout.png",
      name: "Killer chest workout"),
  ChallengeModel(
      image: "assets/images/HIIT killer core.png", name: "HIIT killer core"),
  ChallengeModel(
      image: "assets/images/Brutal ladder HIIT.png",
      name: "Brutal ladder HIIT"),
  ChallengeModel(
      image: "assets/images/Build wider shoulders.png",
      name: "Build wider shoulders"),
  ChallengeModel(
      image: "assets/images/Belly fat burner HIIT.png",
      name: "Belly fat burner HIIT"),
  ChallengeModel(
      image: "assets/images/20 min body calorie burner.png",
      name: "20 min body calorie burner"),
  ChallengeModel(
      image: "assets/images/Burn 100 calories.png", name: "Burn 100 calories")
];
