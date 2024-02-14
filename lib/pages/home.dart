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

    String bgImage = data['isDayTime'] ? 'daytime.jpeg' : 'nighttime.jpeg';
    return Scaffold(
      body: 
      SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0,0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                    // push to another route
                      onPressed: (){
                        Navigator.pushNamed(context, '/locations');
                      },
                      icon: Icon(Icons.edit_location_alt,
                          color: Colors.black),
                      label: Text('Edit Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontFamily: 'Outfit',
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold
                      ),
                      )),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold
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
            ),
          )),
    );
  }
}
