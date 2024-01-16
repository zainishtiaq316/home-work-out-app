import 'package:flutter/material.dart';
import 'package:homeworkout/Model/detailModel.dart';

import '../Home/bottomSheetScreen.dart';

class DetailCard extends StatefulWidget {
  final DetailModel model;
  const DetailCard({Key? key, required this.model}) : super(key: key);

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: BottomSheetModel(
                  model: widget.model,
                ),
              ),
            );
          },
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Image.network(
                    widget.model.imageGif!,
                    fit: BoxFit.cover,
                  ),
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
                          widget.model.name!,
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
                        widget.model.time!,
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
      ),
    );
  }
}
