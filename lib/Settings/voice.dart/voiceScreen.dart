import 'package:flutter/material.dart';

class voiceScreen extends StatefulWidget {
  const voiceScreen({super.key});

  @override
  State<voiceScreen> createState() => _voiceScreenState();
}

class _voiceScreenState extends State<voiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Voice Options (TTS)",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Column(
              children: [
                otherSettings(
                    "Workout Settings",
                    "https://cdn-icons-png.flaticon.com/512/95/95878.png",
                    Colors.green),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                    "General Settings",
                    "https://upload.wikimedia.org/wikipedia/commons/d/dc/Settings-icon-symbol-vector.png",
                    Colors.blue),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                    "Voice Options (TTS)",
                    "https://www.iconpacks.net/icons/1/free-microphone-icon-342-thumb.png",
                    Colors.orange),
                SizedBox(
                  height: 10,
                ),
                otherSettings(
                    "Language Options",
                    "https://icons.iconarchive.com/icons/iconsmind/outline/512/Globe-icon.png",
                    Colors.purple),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget otherSettings(String? name, String? iconImage, Color? iconBoxColor) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: iconBoxColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.network(
                    "$iconImage",
                    color: Colors.white,
                  ),
                ),
              ),
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
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider()
        ],
      ),
    );
  }
}
