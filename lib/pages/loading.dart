import 'package:flutter/material.dart';
import 'package:flutterprojects/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void setUpWorldTime () async {
    WorldTime instance = WorldTime(location: 'London', flag: 'london.png', url: 'Europe/London');
    await instance.getTime();
    // redirect to the homepage
    Navigator.pushNamed(context, '/home', arguments: {
      'location' : instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  //runs first when the state object is created
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100.0),
        child: Text('Loading...'),
      ),
    );
  }
}
