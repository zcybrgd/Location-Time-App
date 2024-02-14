import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  //runs first when the state object is created
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Choose Location'),
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
