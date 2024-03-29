import 'dart:convert';

import 'package:homeworkout/Model/detailModel.dart';

class BeginnerModel {
  int? points;
  String? image;
  String? exerciseName;
  String? time;
  String? exercise;
  List<DetailModel>? items;
  BeginnerModel(
      {this.exercise,
      this.points,
      this.exerciseName,
      this.time,
      this.image,
      this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'points': points,
      'image': image,
      'exerciseName': exerciseName,
      'time': time,
      'exercise': exercise,
      'items': items?.map((item) => item.toMap()).toList(),
    };
  }

  factory BeginnerModel.fromMap(Map<String, dynamic> map) {
    return BeginnerModel(
      points: map['points'] as dynamic,
      image: map['image'] as String,
      exerciseName: map['exerciseName'] as String,
      time: map['time'] as dynamic,
      exercise: map['exercise'] as String,
      items: (map['items'] as List<dynamic>?)
          ?.map((item) => DetailModel.fromMap(item))
          .toList(),
    );
  }
  String toJson() => json.encode(toMap());

  factory BeginnerModel.fromJson(String source) =>
      BeginnerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<BeginnerModel> beginnerItems = [
  BeginnerModel(
      image: "assets/images/ABS BEGINNER.jpg",
      points: 1,
      exerciseName: "ABS BEGINNER",
      time: "20 MINS",
      exercise: "16 EXERCISES",
      items: absBeginner),
  BeginnerModel(
      image: "assets/images/CHEST BEGINNER.jpeg",
      points: 1,
      exerciseName: "CHEST BEGINNER",
      time: "11 MINS",
      exercise: "11 EXERCISES",
      items: chestBeginner),
  BeginnerModel(
      image: "assets/images/ARM BEGINNER.jpg",
      points: 1,
      exerciseName: "ARM BEGINNER",
      time: "17 MINS",
      exercise: "19 EXERCISES",
      items: armBeginner),
  BeginnerModel(
      image: "assets/images/LEG BEGINNER.jpg",
      points: 1,
      exerciseName: "LEG BEGINNER",
      time: "26 MINS",
      exercise: "23 EXERCISES",
      items: legBeginner),
  BeginnerModel(
      image: "assets/images/SHOULDER & BACK BEGINNER.jpg",
      points: 1,
      exerciseName: "SHOULDER & BACK BEGINNER",
      time: "17 MINS",
      exercise: "17 EXERCISES",
      items: shoulderBeginner)
];
List<BeginnerModel> intermediateItems = [
  BeginnerModel(
      image: "assets/images/ABS INTERMEDIATE.jpg",
      points: 2,
      exerciseName: "ABS INTERMEDIATE",
      time: "29 MINS",
      exercise: "21 EXERCISES",
      items: absIntermediate),
  BeginnerModel(
      image: "assets/images/CHEST INTERMEDIATE.jpg",
      points: 2,
      exerciseName: "CHEST INTERMEDIATE",
      time: "15 MINS",
      exercise: "14 EXERCISES",
      items: chestIntermediate),
  BeginnerModel(
      image: "assets/images/ARM INTERMEDIATE.jpg",
      points: 2,
      exerciseName: "ARM INTERMEDIATE",
      time: "26 MINS",
      exercise: "25 EXERCISES",
      items: armIntermediate),
  BeginnerModel(
      image: "assets/images/LEG INTERMEDIATE.jpg",
      points: 2,
      exerciseName: "LEG INTERMEDIATE",
      time: "41 MINS",
      exercise: "36 EXERCISES",
      items: legIntermediate),
  BeginnerModel(
      image: "assets/images/SHOULDER & BACK INTERMEDIATE.jpg",
      points: 2,
      exerciseName: "SHOULDER & BACK INTERMEDIATE",
      time: "19 MINS",
      exercise: "17 EXERCISES",
      items: shoulderIntermediate)
];
List<BeginnerModel> advancedItems = [
  BeginnerModel(
      image: "assets/images/ABS ADVANCED.jpg",
      points: 3,
      exerciseName: "ABS ADVANCED",
      time: "36 MINS",
      exercise: "21 EXERCISES",
      items: absAdvanced),
  BeginnerModel(
      image: "assets/images/CHEST ADVANCED.jpg",
      points: 3,
      exerciseName: "CHEST ADVANCED",
      time: "19 MINS",
      exercise: "16 EXERCISES",
      items: chestAdvanced),
  BeginnerModel(
      image: "assets/images/ARM ADVANCED.jpg",
      points: 3,
      exerciseName: "ARM ADVANCED",
      time: "32 MINS",
      exercise: "28 EXERCISES",
      items: armAdvanced),
  BeginnerModel(
      image: "assets/images/LEG ADVANCED.jpg",
      points: 3,
      exerciseName: "LEG ADVANCED",
      time: "53 MINS",
      exercise: "43 EXERCISES",
      items: legAdvanced),
  BeginnerModel(
      image: "assets/images/SHOULDER & BACK ADVANCED.jpg",
      points: 3,
      exerciseName: "SHOULDER & BACK ADVANCED",
      time: "19 MINS",
      exercise: "17 EXERCISES",
      items: shoulderAdvanced)
];
