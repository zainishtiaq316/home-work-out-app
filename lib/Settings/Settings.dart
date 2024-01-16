import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:homeworkout/Model/UserModel.dart';
import 'package:homeworkout/Settings/general.dart/generalSetting.dart';
import 'package:homeworkout/Settings/language.dart/languageScreen.dart';
import 'package:homeworkout/Settings/voice.dart/voiceScreen.dart';
import 'package:homeworkout/Settings/workOut.dart/workout.dart';
import 'package:homeworkout/SigninSignup/googleSignIn.dart';
import 'package:homeworkout/page/homepage.dart';
import 'package:homeworkout/utils/loadingIndicator.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _auth = FirebaseAuth.instance;
  UserModel loggedInUser = UserModel();
  String? role;
  String? token;
  String language = "English";

  Future<void> getFirebaseMessagingToken() async {
    await FirebaseMessaging.instance.requestPermission();
    await FirebaseMessaging.instance.getToken().then((t) {
      if (t != null) {
        setState(() {
          token = t;
          print('Push Token: $t');
        });
      }
    });
  }

  _signOut() async {
    await _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    checkUserLogin();
  }

  Future<void> checkUserLogin() async {
    User? user = _auth.currentUser;
    if (user != null) {
      await getuser(user.uid);
    }
  }

  Future getuser(String? uid) async {
    if (uid == null) {
      // Handle the case where uid is null
      return;
    }

    await FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .get()
        .then((value) {
      if (value.exists) {
        loggedInUser = UserModel.fromMap(value.data()!);
        setState(() {
          role = loggedInUser.role;
        });
      } else {
        // Handle the case where the document does not exist
        print("User document does not exist for uid: $uid");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final googleSignIn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () async {
          loader(context);
          await getFirebaseMessagingToken();
          await signInWithGoogle(context, loggedInUser, token.toString());
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              }
              return Colors.blue;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Continue with Google",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
    void _showLogoutConfirmationDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            surfaceTintColor: Colors.white,
            title: Text(
              "Are you sure you want to log out?",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  _signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Ok",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    Widget bottomSheetModel() {
      return Column(
        children: [
          if (_auth.currentUser == null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 20,
                              )),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png",
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Backup & Restore",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                    "Sychronize your data",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: googleSignIn,
                  ),
                ],
              ),
            )
          else
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.grey,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.brown,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Zain Ishtiaq",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.network(
                                  "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                  height:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ],
                            ),
                            Text(
                              "zainishtiaq.7866@gmail.com",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        _showLogoutConfirmationDialog(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: Center(
                              child: Text(
                            "Log out",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: Center(
                              child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
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
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40)),
                            ),
                            child: bottomSheetModel(),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, top: 10, bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                if (_auth.currentUser != null)
                                  // Container(
                                  //   width: MediaQuery.of(context).size.width *
                                  //       0.15,
                                  //   height: MediaQuery.of(context).size.height *
                                  //       0.1,
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.brown,
                                  //       shape: BoxShape.circle),
                                  //   child: Center(
                                  //       child: Image.network(
                                  //           "${loggedInUser.photoURL}")),
                                  // ),
                                  SizedBox(
                                    width: _auth.currentUser != null ? 10 : 0,
                                  ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            _auth.currentUser != null
                                                ? "Zain"
                                                : "Backup & Restore",
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
                                      _auth.currentUser != null
                                          ? "Last sync: 2:54PM"
                                          : "Sign in and sychronize your data",
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
      onTap: () {
        if (name == 'Workout Settings')
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => workOutScreen())));

        if (name == 'General Settings')
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => GeneralSettingScreen())));

        if (name == 'Voice Options (TTS)')
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => voiceScreen()));

        if (name == 'Language Options')
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => languageScreen()));
      },
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  if (name == 'Language Options')
                    Text(
                      "$language",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                ],
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
