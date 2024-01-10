import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerChallenge.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';
import 'package:homeworkout/Widget/beginnerCard.dart';
import 'package:homeworkout/Widget/forBeginnerCard.dart';
import 'package:homeworkout/Widget/picksCard.dart';
import 'package:homeworkout/Widget/stretchCard.dart';

class forChallengeStyle extends StatelessWidget {
  const forChallengeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.22,
        child: GridView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 1.5 / 1.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: List.generate(
            challenngeItems.length,
            (index) => ForBeginnerCard(
              model: challenngeItems[index],
              colors: Colors.orange.shade300,
            ),
          ),
        ));
  }
}
