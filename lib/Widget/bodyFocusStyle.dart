import 'package:flutter/material.dart';
import 'package:homeworkout/Model/bodyFocusModel.dart';
import 'package:homeworkout/Widget/bodyFocusCard.dart';

class BodyFocusStyle extends StatelessWidget {
  const BodyFocusStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(17),
          itemCount: bodyfocusitems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 4.0,
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            return BodyFocusCard(model: bodyfocusitems[index]);
          }),
    );
  }
}
