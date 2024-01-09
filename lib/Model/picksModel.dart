import 'dart:convert';

class DiscoverPicks {
  String? image;
  String? name;
  String? duration;
  String? level;
  DiscoverPicks({this.duration, this.image, this.level, this.name});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'duration': duration,
      'level': level
    };
  }

  factory DiscoverPicks.fromMap(Map<String, dynamic> map) {
    return DiscoverPicks(
        image: map['image'] as String,
        name: map['name'] as String,
        duration: map['duration'] as dynamic,
        level: map['level'] as String);
  }

  String toJson() => json.encode(toMap());

  factory DiscoverPicks.fromJson(String source) =>
      DiscoverPicks.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<DiscoverPicks> discoverPicksItems = [
  DiscoverPicks(
      image: "assets/images/Belly fat burner HIIT.jpg",
      name: "Belly fat burner HIIT",
      duration: "14 min",
      level: "Beginner"),
  DiscoverPicks(
      image: "assets/images/Lose fat (NO JUMPING!).jpg",
      name: "Lose fat (NO JUMPING!)",
      duration: "15 mint",
      level: "Intermediate"),
  DiscoverPicks(
      image: "assets/images/Get rid of man boobs HIIT.jpg",
      name: "Get rid of man boobs HIIT",
      duration: "13 min",
      level: "Beginner"),
  DiscoverPicks(
      image: "assets/images/HIIT Killer core.jpg",
      name: "HIIT Killer core",
      duration: "14 min",
      level: "Beginner"),
  DiscoverPicks(
      image: "assets/images/Last longer in bed.jpg",
      name: "Last longer in bed",
      duration: "12 min",
      level: "Intermediate"),
  DiscoverPicks(
      image: "assets/images/Ripped v-cut abs sculpting.jpg",
      name: "Ripped v-cut abs sculpting",
      duration: "12 min",
      level: "Beginner"),
  DiscoverPicks(
      image: "assets/images/Build wider shoulders.jpg",
      name: "Build wider shoulders",
      duration: "13 min",
      level: "Intermediate"),
  DiscoverPicks(
      image: "assets/images/HIIT intermediate.jpg",
      name: "HIIT intermediate",
      duration: "13 min",
      level: "Intermediate"),
  DiscoverPicks(
      image: "assets/images/Fat burning HIIT.jpg",
      name: "Fat burning HIIT",
      duration: "10 min",
      level: "Intermediate")
];
