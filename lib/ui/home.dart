
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BizzCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        title: Text("BizzCard"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover
          )
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
       width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Abhishek Singh",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),
          ),
          Text("Android Developer!!"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.email),
              Text("Email : abhishek2511.25@gmail.com")
            ],
          )
        ],
      ),
    );
  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.white,width: 1.5),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover
        )
      ),
    );
  }
}
