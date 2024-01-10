import 'package:flutter/material.dart';
import 'package:homeworkout/Model/bodyFocusModel.dart';

class BodyFocusCard extends StatelessWidget {
  final BodyFocusModel model;
  const BodyFocusCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blueGrey),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Image.asset(
              model.image!,
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.2,
            )),
        Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              model.name!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
