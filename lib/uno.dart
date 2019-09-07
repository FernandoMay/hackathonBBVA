import 'package:flutter/material.dart';
import 'dart:async';

class Clima {
  final int userId;
  final int id;
  final String title;
  final String body;

  Clima({this.userId, this.id, this.title, this.body});

  factory Clima.fromJson(Map<String, dynamic> json) {
    return Clima(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
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
                          MyContainer(
                              texto: snapshot.data.userId.toString()),
                          MyContainer(texto: snapshot.data.title),
                          MyContainer(texto: snapshot.data.body),
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
