import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/lang/lang.dart';
import 'package:tour_guide/local_date/local_data.dart';
import 'package:tour_guide/provider/bloc_state.dart';

class AboutErbilPage extends StatelessWidget {
  static const String route = 'AboutErbilPage';
  @override
  Widget build(BuildContext context) {
    final blocState = Provider.of<BlocState>(context, listen: false);
    final localData = Provider.of<Items>(context, listen: false);
    return Directionality(
      textDirection:
          blocState.langCode == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(langMap[blocState.langCode]['About Erbil']),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 4,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('images/erbil1.jpeg', fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    localData.description[blocState.langCode],
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
