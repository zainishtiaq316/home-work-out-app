import 'package:flutter/material.dart';

class StayActive extends StatelessWidget {
  const StayActive({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/images/CHEST BEGINNER.jpeg"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            left: 20,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "Stay active, stay in Shape",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "5 workouts",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            )),
      ],
    );
  }
}
