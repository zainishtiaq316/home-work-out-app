import 'package:flutter/material.dart';
import 'package:homeworkout/Model/detailModel.dart';
import 'package:homeworkout/Widget/detailCard.dart';

class DetailStyle extends StatelessWidget {
  const DetailStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 3,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
                height: MediaQuery.of(context).size.height * 0.17,
                child: DetailCard(model: absBeginner[index]));
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: absBeginner.length),
    );
  }
}
