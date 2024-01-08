import 'package:flutter/material.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';
import 'package:homeworkout/Widget/picksCard.dart';
import 'package:homeworkout/Widget/stretchCard.dart';

class stretchStyle extends StatelessWidget {
  const stretchStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: GridView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 1.1 / 1.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: List.generate(
            stretchItems.length,
            (index) => stretchCard(model: stretchItems[index]),
          ),
        ));
  }
}
