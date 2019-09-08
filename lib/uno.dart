import 'package:flutter/material.dart';
import 'dart:async';

class Clima {
  final String cityId;
  final String name;
  final String stateAbbr;
  final int dayNumber;
  final String validDateUtc;
  final String localValidDate;
  final int hiTempF;
  final int lowTempF;
  final int hiTempC;
  final int lowTempC;
  final String phraseDay;
  final String phraseNight;
  final String skyText;
  final int probabilityOfPrecip;
  final int relativeHumidity;
  final int windSpeedMph;
  final int windDirection;
  final String windDirectionCardinal;
  final int cloudCoverage;
  final int uvIndex;
  final String uvDescription;
  final int iconCode;
  final int iconCodeNight;
  final String skyTextNight;
  final int latitude;
  final int longitude;

  Clima({
    this.cityId,
    this.cloudCoverage,
    this.dayNumber,
    this.hiTempC,
    this.hiTempF,
    this.iconCode,
    this.iconCodeNight,
    this.latitude,
    this.localValidDate,
    this.uvDescription,
    this.longitude,
    this.phraseDay,
    this.lowTempC,
    this.lowTempF,
    this.name,
    this.phraseNight,
    this.probabilityOfPrecip,
    this.relativeHumidity,
    this.skyText,
    this.skyTextNight,
    this.stateAbbr,
    this.uvIndex,
    this.validDateUtc,
    this.windDirection,
    this.windDirectionCardinal,
    this.windSpeedMph,
  });

  factory Clima.fromJson(Map<String, dynamic> json) {
    return Clima(
    cityId: json['CityId'],
    cloudCoverage: json['Name'],
    dayNumber: json['StateAbbr'],
    hiTempC: json['HiTempC'],
    hiTempF: json['HiTempF'],
    iconCode: json['IconCode'],
    iconCodeNight: json['IconCodeNight'],
    latitude: json['Latitude'],
    localValidDate: json['LocalValidDate'],
    uvDescription: json['UvDescription'],
    longitude: json['Longitude'],
    phraseDay: json['PhraseDay'],
    lowTempC: json['LowTempC'],
    lowTempF: json['LowTempF'],
    name: json['Name'],
    phraseNight: json['PhraseNight'],
    probabilityOfPrecip: json['ProbabilityOfPrecip'],
    relativeHumidity: json['RelativeHumidity'],
    skyText: json['SkyText'],
    skyTextNight: json['SkyTextNight'],
    stateAbbr: json['StateAbbr'],
    uvIndex: json['UvIndex'],
    validDateUtc: json['ValidDateUtc'],
    windDirection: json['WindDirection'],
    windDirectionCardinal: json['WindDirectionCardinal'],
    windSpeedMph: json['WindSpeedMph'],
    );
  }
}

class Uno extends StatelessWidget {
  final Future<Clima> post;

  Uno({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],*/
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: FutureBuilder<Clima>(
                  future: post,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: <Widget>[
                          MyContainer(texto: snapshot.data.name),
                          MyContainer(texto: snapshot.data.dayNumber.toString()),
                          MyContainer(texto: snapshot.data.hiTempC.toString()),
                          MyContainer(texto: snapshot.data.lowTempC.toString()),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    // By default, show a loading spinner.
                    return CircularProgressIndicator();
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String texto;

  MyContainer({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width - 36,
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.12),
            offset: Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: Text(texto),
    );
  }
}
