import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homeworkout/Model/beginnerModel.dart';
import 'package:homeworkout/Model/bodyFocusModel.dart';
import 'package:homeworkout/Model/challengeModel.dart';
import 'package:homeworkout/Model/fastworkoutmodel.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';

class FirestoreService {
  Future<void> BeginnerModelData(
      List<BeginnerModel> data, String collectionName) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection(collectionName).add({
          'points': item.points,
          'image': item.image,
          'exerciseName': item.exerciseName,
          'time': item.time,
          'exercise': item.exercise,
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }

  Future<void> bodyFocusData(List<BodyFocusModel> data) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection("bodyFocus").add({
          'image': item.image,
          'name': item.name,
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }

  Future<void> challengeData(List<ChallengeModel> data) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection("challengeData").add({
          'image': item.image,
          'name': item.name,
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }

  Future<void> fastWorkData(List<FastWorkOut> data) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection("fastWorkData").add({
          'image': item.image,
          'name': item.name,
          'duration': item.duration,
          'level': item.level
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }

  Future<void> pickData(List<DiscoverPicks> data) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection("pickData").add({
          'image': item.image,
          'name': item.name,
          'duration': item.duration,
          'level': item.level
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }

  Future<void> stretchData(List<StretchModel> data) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection("stretchData").add({
          'image': item.image,
          'name': item.name,
        });
      }

      print('Data uploaded to Firebase successfully.');
    } catch (e) {
      print('Error uploading data to Firebase: $e');
    }
  }
}
