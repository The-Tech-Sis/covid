import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
//import 'package:covid_19/screens/home_screen.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Covid-19 App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor)
      ),
      home: const HomeScreen(),
    );
  }
}




