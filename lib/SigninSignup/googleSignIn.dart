import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:homeworkout/Model/UserModel.dart';
import 'package:homeworkout/Settings/Settings.dart';

Future<UserCredential?> signInWithGoogle(
    BuildContext context, UserModel userModel, String token) async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      // Handle the case where Google sign-in is not successful
      return null;
    }

    // Obtain the auth details from t
    //he request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;
    if (googleAuth == null) {
      // Handle the case where Google authentication is not successful
      return null;
    }
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance
        .signInWithCredential(credential)
        .whenComplete(() async {
      userModel.email = googleUser!.email;
      userModel.uid = googleUser.id;
      userModel.firstName = googleUser.displayName;
      userModel.secondName = "";
      userModel.phoneNumber = "";
      userModel.photoURL = googleUser.photoUrl;
      userModel.role = "User";
      userModel.token = token;
      // userModel.notifications =;
      await FirebaseFirestore.instance
          .collection("users")
          .doc(googleUser.id)
          .set(userModel.toMap());

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
          (route) => false);
    });
  } catch (e) {
    Navigator.pop(context);
    Fluttertoast.showToast(msg: "Something went wrong");
    print("Error on google Signin ==> $e");
  }
  return null;
}
