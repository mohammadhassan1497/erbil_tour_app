import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/custom_card/custom_card.dart';
import 'package:tour_guide/lang/lang.dart';
import 'package:tour_guide/local_date/local_data.dart';
import 'package:tour_guide/provider/bloc_state.dart';

class TourPlacesPage extends StatelessWidget {
  static const String route = 'Tour Places';
  @override
  Widget build(BuildContext context) {
    final blocState = Provider.of<BlocState>(context, listen: false);
    final localData = Provider.of<Items>(context, listen: false);
    return Directionality(
      textDirection:
          blocState.langCode == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(langMap[blocState.langCode]['Tour Place']),
        ),
        body: ListView.builder(
          itemCount: localData.tourPlaces.length,
          itemBuilder: (context, i) => CustomCard(
            item: localData.tourPlaces[i][blocState.langCode],
            langCode: blocState.langCode,
          ),
        ),
      ),
    );
  }
}
