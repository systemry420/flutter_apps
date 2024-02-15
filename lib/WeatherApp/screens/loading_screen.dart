import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse('https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=Cx0yFXAGqutOOp3xXP500Yl2SL9cOqyA'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String jsonValue;
            Future<http.Response> response = fetchAlbum();
            response.then((value) => jsonValue = value.body);


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
    );
  }
}

class Body {
  Timelines? timelines;

  Body({this.timelines});

  Body.fromJson(Map<String, dynamic> json) {
    if (json['timelines'] != null) {
      timelines = json['timelines'];
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
