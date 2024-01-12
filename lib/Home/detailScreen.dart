import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerModel.dart';
import 'package:homeworkout/Widget/detailStyle.dart';

class DetailScreen extends StatefulWidget {
  final BeginnerModel detail;
  const DetailScreen({super.key, required this.detail});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                "Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          )),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 240,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "${widget.detail.exerciseName}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  background: Image.asset(
                    widget.detail.image!,
                    fit: BoxFit.cover,
                  ),
                ),
                floating: true,
                snap: true,
                pinned: true,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.004,
                        height: MediaQuery.of(context).size.height * 0.02,
                        color: Colors.blue.shade900,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${widget.detail.time} • ${widget.detail.exercise}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: DetailStyle(),
                )
              ],
            ),
          )),
    );
  }
}
