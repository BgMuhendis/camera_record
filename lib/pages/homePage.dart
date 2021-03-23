import 'package:camera_demo/buttons/buttons.dart';
import 'package:camera_demo/field/bannerArea.dart';
import 'package:camera_demo/theme/colors.dart';
import 'package:camera_demo/theme/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSizeHeight = MediaQuery.of(context).size.height;
    final screenSizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: white,
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.only(top: 8, left: 8, bottom: 8),
          child: CircleAvatar(
            child: Image.asset(
              "images/turkbayragi.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: title,
        actions: [
          IconButton(
            icon: search,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: screenSizeHeight,
        width: screenSizeWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 0),
                child: favoriteFood,
              ),
              BannerWidgetArea(),
            ],
          ),
        ),
      ),
    );
  }

  ListView getListe() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("$index"),
          ),
        );
      },
    );
  }
}
