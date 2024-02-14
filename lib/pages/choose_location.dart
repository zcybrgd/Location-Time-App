import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: 
      ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text(
            'counter is $counter'
          )),
    );
  }
}
