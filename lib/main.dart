import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meal_planner/firebase_options.dart';
import 'package:meal_planner/screens/landing_wrapper.dart';
import 'package:meal_planner/widgets/meal.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingWrapper(),
    );
  }
}