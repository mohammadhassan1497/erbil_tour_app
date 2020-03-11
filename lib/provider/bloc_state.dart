import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BlocState with ChangeNotifier {
  String langCode = 'en';

  void changeLangCode(String langCod) {
    langCode = langCod;
    notifyListeners();
  }

  Future<void> setLnagCode(langCod) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('langCode', langCod);
  }

  Future<void> getLangCode() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String lang = pref.getString('langCode');
    ////if langCode is null set en by default
    langCode = lang ?? 'en';
    notifyListeners();
  }
}
