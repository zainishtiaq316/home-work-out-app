import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginner.dart';
import 'package:homeworkout/Widget/beginnerCard.dart';

class BeginnerStyle extends StatelessWidget {
  const BeginnerStyle({super.key});

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
              child: BeginnerCard(
                model: beginnerItems[index],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: beginnerItems.length),
    );
  }
}
