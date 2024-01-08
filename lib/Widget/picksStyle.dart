import 'package:flutter/material.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Widget/picksCard.dart';

class picksStyle extends StatelessWidget {
  const picksStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: GridView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1.1 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: List.generate(
            discoverPicksItems.length,
            (index) => picksCard(model: discoverPicksItems[index]),
          ),
        ));
  }
}
