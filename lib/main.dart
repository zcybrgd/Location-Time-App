import 'package:flutter/material.dart';

// that widget will allow us to use google material design features, its a wrapper [the root] of the rest of our widgets inside the app
void main() => runApp(MaterialApp(
  // propreties
  home: Scaffold(
    appBar: AppBar(
      title: Text('Location Time App'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('This Is A Flutter Bootcamp'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: null,
      child: Text('Click'),
    ),
  ),
));