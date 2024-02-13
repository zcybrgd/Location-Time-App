import 'package:flutter/material.dart';
import 'package:flutterprojects/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime () async {
    WorldTime instance = WorldTime(location: 'london', flag: 'london.png', url: 'Europe/London');
    await instance.getTime();
    print(instance.time);
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
      body: 
      Text('Loading screen'),
    );
  }
}
