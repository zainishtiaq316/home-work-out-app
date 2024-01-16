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
          "https://i.pinimg.com/originals/51/e5/d9/51e5d9b2ddead29164c5f8e7132dd557.gif",
      name: "ABOMINAL CRUNCHES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://program.rapidloss.com.au/wp-content/uploads/russian-twist.gif",
      name: "RUSSIAN TWIST",
      time: "x20"),
  DetailModel(
      imageGif:
          "https://program.rapidloss.com.au/wp-content/uploads/mountain-climber.gif",
      name: "MOUNTAIN CLIMBER",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://the-optimal-you.com/wp-content/uploads/2018/03/Heel-Touch-GIF.gif",
      name: "HEEL TOUCH",
      time: "x20"),
  DetailModel(
      imageGif:
          "https://hips.hearstapps.com/hmg-prod/images/workouts/2016/08/legraisekickout-1472059471.gif",
      name: "LEG RAISES",
      time: "x16"),
  DetailModel(
      imageGif:
          "https://assets-v2.lottiefiles.com/a/dc68e41e-1189-11ee-a704-a3ee683b17ee/PPWRa1Zbc3.gif",
      name: "PLANK",
      time: "00:20"),
  DetailModel(
      imageGif:
          "https://assets-v2.lottiefiles.com/a/dc68e41e-1189-11ee-a704-a3ee683b17ee/PPWRa1Zbc3.gif",
      name: "PLANK",
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
