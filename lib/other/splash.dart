import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:homeworkout/other/googleSignIn.dart';
import 'package:homeworkout/other/loadingIndicator.dart';

import '../Model/UserModel.dart';
import '../page/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
    final googleSignIn = GestureDetector(
      onTap: () async {
        // loader(context);
        // await getFirebaseMessagingToken();
        // await signInWithGoogle(context, loggedInUser, token.toString());
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.04,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.network(
              "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),
        ),
      ),
    );
    final facebookSignIn = GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.04,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.network(
            "https://static.vecteezy.com/system/resources/previews/018/930/702/non_2x/facebook-logo-facebook-icon-transparent-free-png.png",
          ),
        ),
      ),
    );
    final appleSignIn = GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.04,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png",
          ),
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                )),
                SizedBox(
                  width: 5,
                ),
                Text("Or"),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              googleSignIn,
              SizedBox(
                width: 10,
              ),
              facebookSignIn,
              SizedBox(
                width: 10,
              ),
              appleSignIn
            ],
          )
        ],
      ),
    );
  }
}
