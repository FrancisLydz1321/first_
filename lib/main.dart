import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // be wary of the indentation in the pubspec.yaml

void main() => runApp(
    MyApp()); // similar to es6 arrow function in javascript; void doesn't return anything or asynchronous

class MyApp extends StatelessWidget {
  // defines a class named: "MyApp" extending Stateless widget object
  const MyApp({super.key});

  @override // overriding a method
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    // every class has build() method has "BuildContext context" in it's parameter
    return MaterialApp(
        //debugShowCheckedModeBanner: false, // accepts boolean value
        // used for UI design known as "Material Design"
        theme: ThemeData(
            primaryColor: Colors.purple[900]), // theme is under MaterialApp()
        home: Scaffold(
            appBar:
                AppBar(title: Text('WordPair Generatorasdasdasdasdadsadadads')),
            body: Center(child: Text(wordPair.asPascalCase))));
  }
}
