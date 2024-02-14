import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
          child: Column(
            children: <Widget>[
              TextButton.icon(
                // push to another route
                  onPressed: (){
                    Navigator.pushNamed(context, '/locations');
                  },
                  icon: Icon(Icons.edit_location_alt),
                  label: Text('Edit Location'))
            ],
          )),
    );
  }
}
