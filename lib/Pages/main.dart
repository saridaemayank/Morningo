import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morningo/Pages/Splash_Screen.dart';
import 'package:morningo/google_sign_in.dart';
import 'package:provider/provider.dart';

/*
   TODO:
   1) One Time, On Null showing on Activities other times its not fix it to show only once (DONE)
   2) Bug Fix: SharedPreference on TodoCard How Many Left, Activities Time 
   3) Pop UP Box, When Morning Star Adds
   4) Fucking BUG ABOUT THE DICK BUTTONS NOT WORKING! (DONE) (FIXED)

    //var date = DateTime.now(); 
  var newDate = DateTime.yesterday(); // get this from the SharedPrefrence,  
  final difference = date / newDate.difference(date / newDate).inHours;
  print("Time Differece: ${difference * -1} Hours");
    
  if (difference == 0) {
    print("Time To Change!"); // Unlock Another Wake Up Time
  }

*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Caviar Dreams'),
        home: AppSplashScreen(),
      ),
    ),
  );
}