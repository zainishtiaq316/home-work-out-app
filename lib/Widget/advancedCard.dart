import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginner.dart';

class AdvancedCard extends StatelessWidget {
  final BeginnerModel model;
  const AdvancedCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    model.image!,
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Row(
              children: [
                for (int i = 1; i <= 3; i++)
                  Icon(
                    Icons.electric_bolt_outlined,
                    size: 15,
                    color: i == 1 || i == 2 || i == 3 && model.points == 3
                        ? Colors.blue
                        : Colors.grey,
                  )
              ],
            )),
        Positioned(
            top: 40,
            left: 10,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    model.exerciseName!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      model.time!,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "•",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      model.exercise!,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
