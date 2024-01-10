import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerChallenge.dart';

class ForBeginnerCard extends StatelessWidget {
  final ChallengeModel model;
  final Color colors;
  const ForBeginnerCard({super.key, required this.model, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: colors),
        ),

        Positioned(
            right: 10,
            top: 10,
            child: Image.asset(
              model.image!,
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
            )),
        // Positioned(
        //     child: Container(
        //   width: MediaQuery.of(context).size.width * 0.3,
        //   decoration: BoxDecoration(
        //       shape: BoxShape.circle, color: Colors.blue.shade400),
        // )),
        Positioned(
            left: 10,
            bottom: 20,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  model.name!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )))
      ],
    );
  }
}
