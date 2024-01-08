import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "SETTINGS",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, top: 10, bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.brown,
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Text(
                                    "Z",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            "Zain Ishtiaq",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.network(
                                            "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Last sync: 2:54PM",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.sync,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 17, right: 17, top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn0.iconfinder.com/data/icons/general-line-set/512/no_ad-512.png",
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.height * 0.03,
                            color: Colors.white,
                          ),
                          Text(
                            "GO PREMIUM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 17, right: 17),
                    child: Column(
                      children: [
                        sycSettings(
                          "Sync to Google Fit",
                          "https://static.vecteezy.com/system/resources/previews/022/484/514/original/google-fit-icon-logo-symbol-free-png.png",
                          false,
                        ),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        sycSettings(
                            "Sync to Health Connect",
                            "https://static.vecteezy.com/system/resources/previews/022/484/514/original/google-fit-icon-logo-symbol-free-png.png",
                            true),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 17, right: 17),
                    child: Column(
                      children: [
                        bottomSettings(
                          "Share with friends",
                          "https://cdn.iconscout.com/icon/free/png-256/free-share-1780858-1514173.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        bottomSettings(
                          "Rate us",
                          "https://cdn-icons-png.flaticon.com/512/118/118669.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        bottomSettings(
                          "Feedback",
                          "https://cdn-icons-png.flaticon.com/512/118/118669.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        bottomSettings(
                          "Remove Ads",
                          "https://cdn0.iconfinder.com/data/icons/general-line-set/512/no_ad-512.png",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Version 10.0.0",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget otherSettings(String? name, String? iconImage, Color? iconBoxColor) {
    return InkWell(
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

  Widget bottomSettings(
    String? name,
    String? iconImage,
  ) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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

  Widget sycSettings(String? name, String? iconImage, bool? isDisbled) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "$iconImage",
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
              Switch(
                  activeColor: Colors.grey,
                  value: isDisbled!,
                  onChanged: (check) {
                    setState(() {
                      isDisbled = check;
                    });
                  }),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
