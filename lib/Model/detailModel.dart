import 'dart:convert';

class DetailModel {
  String? imageGif;
  String? name;
  String? time;
  String? description;
  String? focusArea;
  DetailModel(
      {this.description, this.name, this.focusArea, this.imageGif, this.time});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageGif': imageGif,
      'name': name,
      'time': time,
      'description': description,
      'focusArea': focusArea,
    };
  }

  factory DetailModel.fromMap(Map<String, dynamic> map) {
    return DetailModel(
      imageGif: map['imageGif'] as dynamic,
      name: map['name'] as String,
      time: map['time'] as String,
      description: map['description'] as dynamic,
      focusArea: map['focusArea'] as String,
    );
  }
  String toJson() => json.encode(toMap());

  factory DetailModel.fromJson(String source) =>
      DetailModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

//Beginner
List<DetailModel> absBeginner = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> chestBeginner = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> armBeginner = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> legBeginner = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> shoulderBeginner = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];

//Intermediate
List<DetailModel> absIntermediate = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> chestIntermediate = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> armIntermediate = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> legIntermediate = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> shoulderIntermediate = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];

//Advance
List<DetailModel> absAdvanced = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> chestAdvanced = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> armAdvanced = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> legAdvanced = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
List<DetailModel> shoulderAdvanced = [
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "JUMPING JACKS",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://i.pinimg.com/originals/39/31/b8/3931b8eded1e338e2a4cb34722195bcb.gif",
      name: "Jumping Jacks",
      time: "00:20"),
];
