import 'package:flutter/material.dart';
import 'package:homeworkout/Settings/workOut.dart/gender.dart';

class workOutScreen extends StatefulWidget {
  const workOutScreen({super.key});

  @override
  State<workOutScreen> createState() => _workOutScreenState();
}

class _workOutScreenState extends State<workOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Workout Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Column(
              children: [
                otherSettings(
                  "Gender",
                  Icons.person,
                ),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                  "Training rest",
                  Icons.coffee,
                ),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                  "Countdown Time",
                  Icons.restore,
                ),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                  "Sound options",
                  Icons.keyboard_voice,
                ),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                  "Restart progress",
                  Icons.restart_alt,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget otherSettings(
    String? name,
    IconData? iconImage,
  ) {
    return GestureDetector(
      onTap: () {
        if (name == 'Gender')
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => genderScreen()));
      },
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(5.0), child: Icon(iconImage!)),
              SizedBox(
                width: 10,
              ),
              Text(
                "$name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              if (name == 'Countdown Time')
                Row(
                  children: [
                    Text(
                      "25 sec",
                      style:
                          TextStyle(color: Colors.blue.shade800, fontSize: 13),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        color: Colors.blue.shade800, size: 15)
                  ],
                ),
              if (name == 'Training rest')
                Row(
                  children: [
                    Text(
                      "25 sec",
                      style:
                          TextStyle(color: Colors.blue.shade800, fontSize: 13),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        color: Colors.blue.shade800, size: 15)
                  ],
                )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.3,
          )
        ],
      ),
    );
  }
}
