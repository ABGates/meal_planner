import "package:flutter/material.dart";
import "package:meal_planner/screens/authenticate/authenticate.dart";
import "package:meal_planner/screens/home/home.dart";

class LandingWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    //nav to home or auth depending on sign-in
    return Home();
  }
}