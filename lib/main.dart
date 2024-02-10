import 'package:flutter/material.dart';

// that widget will allow us to use google material design features, its a wrapper [the root] of the rest of our widgets inside the app
void main() => runApp(MaterialApp(
  // propreties
  home: Home()
));


class Home extends StatelessWidget {
  const Home({super.key});
  // the hot reload to not to re-build the whole app, just where the code changed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Time App'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Text(
          'This Is A Flutter Bootcamp',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.purple[500],
              fontFamily: 'Outfit'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.purple[200],
      ),
    );
  }
}
