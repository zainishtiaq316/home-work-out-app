class DetailModel {
  String? imageGif;
  String? name;
  String? time;
  String? description;
  String? focusArea;
  DetailModel(
      {this.description, this.name, this.focusArea, this.imageGif, this.time});
}

List<DetailModel> detailItems = [
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
