import 'dart:convert';

class ChallengeModel {
  String? image;
  String? name;
  String? shadow;
  ChallengeModel({this.image, this.name, this.shadow});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image, 'name': name, 'shadow': shadow};
  }

  factory ChallengeModel.fromMap(Map<String, dynamic> map) {
    return ChallengeModel(
        image: map['image'] as String,
        name: map['name'] as String,
        shadow: map['shadow'] as String);
  }

  String toJson() => json.encode(toMap());

  factory ChallengeModel.fromJson(String source) =>
      ChallengeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<ChallengeModel> challenngeItems = [
  ChallengeModel(
      image: "assets/images/Plank Challenge.png",
      name: "Plank Challenge",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Killer chest workout.png",
      shadow: "assets/images/shadow.png",
      name: "Killer chest workout"),
  ChallengeModel(
      image: "assets/images/HIIT killer core.png",
      name: "HIIT killer core",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Brutal ladder HIIT.png",
      name: "Brutal ladder HIIT",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Build wider shoulders.png",
      name: "Build wider shoulders",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Belly fat burner HIIT.png",
      name: "Belly fat burner HIIT",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/20 min body calorie burner.png",
      name: "20 min body calorie burner",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Burn 100 calories.png",
      name: "Burn 100 calories",
      shadow: "assets/images/shadow.png")
];

List<ChallengeModel> beginnerItem = [
  ChallengeModel(
      image: "assets/images/ONLY 4 moves for abs.png",
      name: "ONLY 4 moves for abs",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Leg workout (NO JUMPING!).png",
      name: "Leg workout (NO JUMPING!)",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Arm workout (NO PUSH-UPS!).png",
      name: "Arm workout (NO PUSH-UPS!)",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Abs workout (NO CRUNCH!).png",
      name: "Abs workout (NO CRUNCH!)",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Build wider shoulders.png",
      name: "Build wider shoulders",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Beginner push up.png",
      name: "Beginner push up",
      shadow: "assets/images/shadow.png"),
  ChallengeModel(
      image: "assets/images/Beginner core workout.png",
      name: "Beginner core workout",
      shadow: "assets/images/shadow.png"),
];
