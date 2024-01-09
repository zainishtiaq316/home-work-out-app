import 'dart:convert';

class FastWorkOut {
  String? image;
  String? name;
  String? duration;
  String? level;
  FastWorkOut({this.duration, this.image, this.level, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'duration': duration,
      'level': level
    };
  }

  factory FastWorkOut.fromMap(Map<String, dynamic> map) {
    return FastWorkOut(
        image: map['image'] as String,
        name: map['name'] as String,
        duration: map['duration'] as dynamic,
        level: map['level'] as String);
  }

  String toJson() => json.encode(toMap());

  factory FastWorkOut.fromJson(String source) =>
      FastWorkOut.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<FastWorkOut> fastWorkItems = [
  FastWorkOut(
      image: "assets/images/4 MIN Tabata.jpg",
      name: "4 MIN Tabata",
      duration: "4 min",
      level: "Intermediate"),
  FastWorkOut(
      image: "assets/images/3 EXCERCISES lose belly fat.jpg",
      name: "3 EXCERCISES lose belly fat",
      duration: "6 mint",
      level: "Beginner"),
  FastWorkOut(
    image: "assets/images/Before workout warmup.jpg",
    name: "Before workout warmup",
    duration: "3 min",
  ),
  FastWorkOut(
      image: "assets/images/7 min classic.jpg",
      name: "7 min classic",
      duration: "7 min",
      level: "Beginner"),
  FastWorkOut(
      image: "assets/images/7 min HIIT fat burning.jpg",
      name: "7 min HIIT fat burning",
      duration: "7 min",
      level: "Beginner"),
  FastWorkOut(
      image: "assets/images/7 min abs workout.jpeg",
      name: "7 min abs workout",
      duration: "7 min",
      level: "Beginner"),
];
