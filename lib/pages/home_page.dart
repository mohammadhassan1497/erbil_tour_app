import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide/lang/lang.dart';
import 'package:tour_guide/pages/about_erbil_page.dart';
import 'package:tour_guide/pages/hotel_page.dart';
import 'package:tour_guide/pages/resturan_page.dart';
import 'package:tour_guide/pages/tour_place_page.dart';
import 'package:tour_guide/provider/bloc_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: Provider.of<BlocState>(context).getLangCode(),
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) => 
              Consumer<BlocState>(
            builder: (BuildContext context, blocState, Widget child) =>
                Directionality(
              textDirection: blocState.langCode == 'en'
                  ? TextDirection.ltr
                  : TextDirection.rtl,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: mediaQuery.size.height,
                    child: Image.asset(
                      'images/erbil1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: blocState.langCode == 'en'
                              ? Alignment.topRight
                              : Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.language,
                              color: Color(0xff666666),
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, SettingsPage.route);
                              _showLanguageDailog(context, blocState);
                            },
                          ),
                        ),
                        Spacer(),
                        Text(
                          langMap[blocState.langCode]['Erbil'],
                          style: blocState.langCode == 'en'
                              ? GoogleFonts.acme(
                                  fontSize: 30, color: Color(0xff666666))
                              : TextStyle(
                                  fontFamily: 'rebin',
                                  fontSize: 30,
                                  color: Color(0xff666666)),
                        ),
                        Text(
                          langMap[blocState.langCode]['Kurdistan, Iraq'],
                          style: blocState.langCode == 'en'
                              ? GoogleFonts.acme(
                                  fontSize: 30, color: Color(0xff666666))
                              : TextStyle(
                                  fontFamily: 'rebin',
                                  fontSize: 30,
                                  color: Color(0xff666666)),
                        ),
                        Spacer(flex: 6),
                        Wrap(
                          spacing: 2,
                          children: <Widget>[
                            _customChipButton(
                                title: langMap[blocState.langCode]
                                    ['About Erbil'],
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AboutErbilPage.route);
                                }),
                            _customChipButton(
                                title: langMap[blocState.langCode]
                                    ['Tour Place'],
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, TourPlacesPage.route);
                                }),
                            _customChipButton(
                                title: langMap[blocState.langCode]['Resturans'],
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ResturansPage.route);
                                }),
                            _customChipButton(
                                title: langMap[blocState.langCode]['Hotels'],
                                onTap: () {
                                  Navigator.pushNamed(context, HotelPage.route);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Opacity _customChipButton({String title, Function onTap}) {
    return Opacity(
      opacity: 0.7,
      child: GestureDetector(
        child: Chip(
          backgroundColor: Color(0xff222222),
          label: Text(
            title,
            style: GoogleFonts.bitter(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  _showLanguageDailog(BuildContext context, BlocState blocState) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Container(
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
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
                child: Text(
                  langMap[blocState.langCode]['Change Language'],
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(),
              FlatButton(
                splashColor: Colors.greenAccent.withOpacity(0.3),
                child: Text(
                  'کوردی سۆرانی',
                  style: TextStyle(
                      color: blocState.langCode == 'ku'
                          ? Colors.green
                          : Colors.black),
                ),
                onPressed: () {
                  blocState.changeLangCode('ku');
                  blocState.setLnagCode('ku');
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                splashColor: Colors.greenAccent.withOpacity(0.3),
                child: Text(
                  'English',
                  style: TextStyle(
                      color: blocState.langCode == 'en'
                          ? Colors.green
                          : Colors.black),
                ),
                onPressed: () {
                  blocState.changeLangCode('en');
                  blocState.setLnagCode('en');
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Opacity _customChipButton({String title, Function onTap}) {
//   return Opacity(
//     opacity: 0.6,
//     child: RaisedButton(
//       splashColor: Colors.green,
//       elevation: 8,
//       child: Text(title,
//           style:
//               GoogleFonts.bitter(fontSize: 11, fontWeight: FontWeight.bold)),
//       onPressed: onTap,
//     ),
//   );
// }؛
