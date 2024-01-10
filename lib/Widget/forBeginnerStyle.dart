import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerChallenge.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';
import 'package:homeworkout/Widget/beginnerCard.dart';
import 'package:homeworkout/Widget/forBeginnerCard.dart';
import 'package:homeworkout/Widget/picksCard.dart';
import 'package:homeworkout/Widget/stretchCard.dart';

class forBeginnerStyle extends StatelessWidget {
  const forBeginnerStyle({super.key});

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
            beginnerItem.length,
            (index) => ForBeginnerCard(
              model: beginnerItem[index],
              colors: Colors.blue.shade600,
            ),
          ),
        ));
  }
}
