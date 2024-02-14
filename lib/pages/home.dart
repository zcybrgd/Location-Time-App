import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  Widget build(BuildContext context) {
    // when we recieve the arguments
    data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      body: 
      SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0,0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  // push to another route
                    onPressed: (){
                      Navigator.pushNamed(context, '/locations');
                    },
                    icon: Icon(Icons.edit_location_alt),
                    label: Text('Edit Location')),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Outfit'
                    )),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                  fontFamily: 'Outfit'
                ),),
              ],
            ),
          )),
    );
  }
}
