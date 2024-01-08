class FastWorkOut {
  String? image;
  String? name;
  String? duration;
  String? level;
  FastWorkOut({this.duration, this.image, this.level, this.name});
}

List<FastWorkOut> fastWorkItems = [
  FastWorkOut(
      image:
          "https://www.runtastic.com/blog/wp-content/uploads/2014/08/tabata_1200x800-1024x683.jpg",
      name: "4 MIN Tabata",
      duration: "4 min",
      level: "Intermediate"),
  FastWorkOut(
      image:
          "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/08/Shutterstock_1223884579.jpg?w=900",
      name: "3 EXCERCISES lose belly fat",
      duration: "6 mint",
      level: "Beginner"),
  FastWorkOut(
    image:
        "https://blog.myfitnesspal.com/wp-content/uploads/2017/10/Foam-Rolling-5-Fixes-to-Common-Pre-Workout-Mistakes-752x472.jpg",
    name: "Before workout warmup",
    duration: "3 min",
  ),
  FastWorkOut(
      image:
          "https://img1.wsimg.com/isteam/ip/39c66745-fdec-4ef0-a122-796cd5847e88/Climbers%20woman%20copy.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true",
      name: "7 min classic",
      duration: "7 min",
      level: "Beginner"),
  FastWorkOut(
      image:
          "https://prod-ne-cdn-media.puregym.com/media/819657/hiit-workouts-for-weight-loss_header.jpg?quality=80",
      name: "7 min HIIT fat burning",
      duration: "7 min",
      level: "Beginner"),
  FastWorkOut(
      image:
          "https://www.fitwirr.com/wp-content/uploads/2023/12/7-minute-ab-workout.jpg",
      name: "7 min abs workout",
      duration: "7 min",
      level: "Beginner"),
];
