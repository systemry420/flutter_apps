import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void fetchAlbum() async {
    try {
      final response = await http.get(Uri.parse('https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=Cx0yFXAGqutOOp3xXP500Yl2SL9cOqyA'));

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON
        final Map<String, dynamic> body = json.decode(response.body);

        // Now you can access the data
        if (body != null && body != null) {
           
          //   if (dailyData.values != null) {
          //     print('Temperature Max: ${dailyData.values!.temperatureMax}');
          //     print('Temperature Min: ${dailyData.values!.temperatureMin}');
          //     print('Wind Speed Avg: ${dailyData.values!.windSpeedAvg}');
          //     print('Cloud Cover Avg: ${dailyData.values!.cloudCoverAvg}');
          //     print('---');
          //   }
          // }
        }
      } else {
        // If the server returns an error response, throw an exception
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Catch any errors that occur during the process
      print('Error: $e');
    }
    //return http.get(Uri.parse();
  }

  @override
  Widget build(BuildContext context) {
    Body? jsonValue;
    return Scaffold(
      body: Column(
        children: [
          //Text(jsonValue?.body?.daily[0]?.values?.temperatureMax!.toString()),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Future<http.Response> response =
                fetchAlbum();
                // response.then((value) => {
                //   jsonValue = Body.fromJson(value.body as Map<String, dynamic>)
                // });


                // if (response?.statusCode == 200) {
                //   var decoded = utf8.decode(response.bodyBytes);
                //   print(decoded);
                //
                //   return decoded;
                // } else {
                //   return "Error";
                // }
              },
              child: Text('Get Location'),
            ),
          ),
        ],
      ),
    );
  }
}

class Body {
  Timelines? body;

  Body({this.body});

  Body.fromJson(Map<String, dynamic> json) {
    if (json['timelines'] != null) {
      body = json['timelines'];
    }
  }
}

class Timelines {
  List<Daily>? daily;

  Timelines({this.daily});

  Timelines.fromJson(Map<String, dynamic> json) {
    if (json['daily'] != null) {
      daily = <Daily>[];
      json['daily'].forEach((v) {
        daily!.add(new Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.daily != null) {
      data['daily'] = this.daily!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class Daily {
  Values? values;

  Daily({this.values});

  Daily.fromJson(Map<String, dynamic> json) {
    values = json['values'] != null
        ? new Values.fromJson(json['values'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.values != null) {
      data['values'] = this.values!.toJson();
    }
    return data;
  }
}

class Values {
  double? temperatureMax;
  double? temperatureMin;
  double? windSpeedAvg;
  double? cloudCoverAvg;

  Values({
    this.temperatureMax,
    this.temperatureMin,
    this.windSpeedAvg,
    this.cloudCoverAvg,
  });

  Values.fromJson(Map<String, dynamic> json) {
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    windSpeedAvg = json['windSpeedAvg'];
    cloudCoverAvg = json['cloudCoverAvg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temperatureMax'] = this.temperatureMax;
    data['temperatureMin'] = this.temperatureMin;
    data['windSpeedAvg'] = this.windSpeedAvg;
    data['cloudCoverAvg'] = this.cloudCoverAvg;
    return data;
  }
}
