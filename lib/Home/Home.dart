import 'package:flutter/material.dart';
import 'package:homeworkout/Widget/advancedStyle.dart';
import 'package:homeworkout/Widget/beginnerStyle.dart';
import 'package:homeworkout/Widget/discoverCard.dart';
import 'package:homeworkout/Widget/intermediateStyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedDate = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME WORKOUT",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Row(
                  children: [
                    homeworkout(0, "WORKOUT"),
                    homeworkout(0, "kCAL"),
                    homeworkout(0, "MINUTE")
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          "WEEK GOAL",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.grey,
                          size: 12,
                        ),
                        Spacer(),
                        Text(
                          "0/1",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 7; i++) date(i),
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "BEGINNER",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: BeginnerStyle()),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "Intermediate",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: IntermediateStyle()),
            Container(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Text(
                "ADVANCED",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: advancedStyle()),
            Container(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: DiscoverCard())
          ],
        ),
      ),
    );
  }

  Widget homeworkout(int? num, String? activity) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "$num",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("${activity}")
        ],
      ),
    );
  }

  Widget date(int? num) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedDate = num!;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "$num",
                style: TextStyle(
                    color: selectedDate == num
                        ? Colors.blue.shade900
                        : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
