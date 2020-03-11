import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/lang/lang.dart';
import 'package:tour_guide/provider/bloc_state.dart';

class SettingsPage extends StatelessWidget {
  static const String route = 'SettingsPage';
  @override
  Widget build(BuildContext context) {
    final blocState = Provider.of<BlocState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(langMap[blocState.langCode]['Settings']),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              langMap[blocState.langCode]['Language'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.cached),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Center(
                  child: Container(
                    margin: EdgeInsets.all(25),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(langMap[blocState.langCode]['Change Language'],
                              style: Theme.of(context).textTheme.headline6),
                        ),
                        Divider(),
                        FlatButton(
                          child: Text('کوردی سۆرانی'),
                          onPressed: () {
                            blocState.changeLangCode('ku');
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text('English'),
                          onPressed: () {
                            blocState.changeLangCode('en');
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
