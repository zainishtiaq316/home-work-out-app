import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homeworkout/Model/beginnerModel.dart';
import 'package:homeworkout/Model/bodyFocusModel.dart';
import 'package:homeworkout/Model/beginnerChallenge.dart';
import 'package:homeworkout/Model/fastworkoutmodel.dart';
import 'package:homeworkout/Model/picksModel.dart';
import 'package:homeworkout/Model/stretchModel.dart';
import 'package:homeworkout/Services/FirestoreService.dart';
import 'package:homeworkout/firebase_options.dart';
import 'package:homeworkout/page/homepage.dart';

import 'other/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  FirestoreService().BeginnerModelData(beginnerItems, 'beginner');

  FirestoreService().BeginnerModelData(intermediateItems, 'intermediate');

  FirestoreService().BeginnerModelData(advancedItems, 'advanced');
  FirestoreService().bodyFocusData(bodyfocusitems);
  FirestoreService().challengeData(challenngeItems, "challengeData");
  FirestoreService().challengeData(beginnerItem, "beginnerData");
  FirestoreService().fastWorkData(fastWorkItems);
  FirestoreService().pickData(discoverPicksItems);
  FirestoreService().stretchData(stretchItems);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
