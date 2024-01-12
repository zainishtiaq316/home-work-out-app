import 'package:flutter/material.dart';
import 'package:homeworkout/Model/detailModel.dart';

class DetailCard extends StatelessWidget {
  final DetailModel model;
  const DetailCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.menu,
                size: 20,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Image.network(
                model.imageGif!,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        model.name!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      model.time!,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey, // You can customize the color of the divider
            thickness: 0.2, // You can customize the thickness of the divider
          ),
        ],
      ),
    );
  }
}
