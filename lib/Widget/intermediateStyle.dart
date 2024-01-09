import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerModel.dart';
import 'package:homeworkout/Widget/beginnerCard.dart';
import 'package:homeworkout/Widget/intermediateCard.dart';

class IntermediateStyle extends StatelessWidget {
  const IntermediateStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.03,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: IntermediateCard(
                model: intermediateItems[index],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: intermediateItems.length),
    );
  }
}
