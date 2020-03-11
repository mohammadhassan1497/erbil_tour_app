import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/lang/lang.dart';
import 'package:tour_guide/provider/bloc_state.dart';

class HotelPage extends StatelessWidget {
  static const String route = 'HotelPage';
  @override
  Widget build(BuildContext context) {
    final blocState = Provider.of<BlocState>(context, listen: false);
    return Directionality(
      textDirection:
          blocState.langCode == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(langMap[blocState.langCode]['Hotels']),
        ),
        body: Container(),
      ),
    );
  }
}
