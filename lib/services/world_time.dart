import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make the request
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map dataRetrieved = jsonDecode(response.body);

    String datetime = dataRetrieved['datetime'];
    String offset = dataRetrieved['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));

    time = now.toString();

  }
}

