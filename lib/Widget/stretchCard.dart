import 'package:flutter/material.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';

class stretchCard extends StatelessWidget {
  final StretchModel model;
  const stretchCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Image.asset(
                "${model.image}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "${model.name}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
