import 'package:flutter/material.dart';

import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [ 
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'), 
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'), 
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'), 
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'), 
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'), 
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'), 
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'), ];


  void updateTime(index) async {
    WorldTime inst = locations[index];
    await inst.getTime();
    Navigator.pop(context, {
      'location' : inst.location,
      'flag': inst.flag,
      'time': inst.time,
      'isDayTime': inst.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title:
        Text('Choose Location',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Outfit',
            color: Colors.white
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(
                    locations[index].location,
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.bold
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        } ,),
    );
  }
}
