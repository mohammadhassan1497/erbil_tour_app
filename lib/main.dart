import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/local_date/local_data.dart';
import 'package:tour_guide/pages/about_erbil_page.dart';
import 'package:tour_guide/pages/home_page.dart';
import 'package:tour_guide/pages/hotel_page.dart';
import 'package:tour_guide/pages/resturan_page.dart';
import 'package:tour_guide/pages/settings_page.dart';
import 'package:tour_guide/pages/tour_place_page.dart';
import 'package:tour_guide/provider/bloc_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Items(),
        ),
        ChangeNotifierProvider.value(
          value: BlocState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomePage(),
        routes: {
          AboutErbilPage.route: (context) => AboutErbilPage(),
          TourPlacesPage.route: (context) => TourPlacesPage(),
          ResturansPage.route: (context) => ResturansPage(),
          HotelPage.route: (context) => HotelPage(),
          SettingsPage.route: (context) => SettingsPage(),
        },
      ),
    );
  }
}
