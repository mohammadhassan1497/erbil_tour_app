import 'package:flutter/material.dart';
import 'package:tour_guide/local_date/local_data.dart';

class CustomCard extends StatelessWidget {
  final Item item;
  final String langCode;

  const CustomCard({this.item, this.langCode});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20, top: 5, left: 10, right: 10),
      elevation: 8,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              item.imageurl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            alignment:
                langCode == 'en' ? Alignment.bottomLeft : Alignment.bottomRight,
            child: Text(
              item.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 70,
            child: Text(
              item.description,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
