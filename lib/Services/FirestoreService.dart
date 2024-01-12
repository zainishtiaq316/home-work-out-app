import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homeworkout/Model/beginnerModel.dart';
import 'package:homeworkout/Model/bodyFocusModel.dart';
import 'package:homeworkout/Model/beginnerChallenge.dart';
import 'package:homeworkout/Model/fastworkoutmodel.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';

class FirestoreService {
  Future<void> BeginnerModelData(
      List<BeginnerModel> data, String collectionName) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var beginnerItem in data) {
        // Convert DetailModel items to a list of maps
        List<Map<String, dynamic>> detailItemsData = [];
        if (beginnerItem.items != null) {
          detailItemsData = beginnerItem.items!
              .map((detailItem) => detailItem.toMap())
              .toList();
        }

        // Save the BeginnerModel along with its DetailModel items
        var beginnerDocRef =
            await firebaseFirestore.collection(collectionName).add({
          'points': beginnerItem.points,
          'image': beginnerItem.image,
          'exerciseName': beginnerItem.exerciseName,
          'time': beginnerItem.time,
          'exercise': beginnerItem.exercise,
          'items': detailItemsData,
        });

        // Optionally, if 'items' is a subcollection, you can use the reference
        // to add each DetailModel item to the subcollection
        if (detailItemsData.isNotEmpty) {
          var itemsSubcollectionRef =
              beginnerDocRef.collection('items'); // adjust 'items' accordingly
          for (var detailItemData in detailItemsData) {
            await itemsSubcollectionRef.add(detailItemData);
          }
        }
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

  Future<void> challengeData(
      List<ChallengeModel> data, String CollectionName) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      for (var item in data) {
        await firebaseFirestore.collection(CollectionName).add(
            {'image': item.image, 'name': item.name, 'shadow': item.shadow});
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
