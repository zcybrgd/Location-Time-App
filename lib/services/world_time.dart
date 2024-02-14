import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDayTime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

      try {
        // make the request
        Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
        Map dataRetrieved = jsonDecode(response.body);

        String datetime = dataRetrieved['datetime'];
        String offset = dataRetrieved['utc_offset'].substring(1,3);

        print(datetime);
        DateTime now = DateTime.parse(datetime);
        now.add(Duration(hours: int.parse(offset)));


        isDayTime = (now.hour > 6 && now.hour < 20) ? true : false;
        time = DateFormat.jm().format(now);


      } catch (e){
        time = 'could not fetch time data';
      }


  }
}

