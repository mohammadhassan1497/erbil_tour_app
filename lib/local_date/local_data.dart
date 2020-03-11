import 'package:flutter/cupertino.dart';

class Item {
  final id;
  final title;
  final description;
  final imageurl;

  Item(this.id, this.title, this.description, this.imageurl);
}

class Items with ChangeNotifier {
  List<Map<String, Item>> _tourPlaces = [
    {
      'ku': Item(
          'a1',
          'سەیرانگای هەنارە',
          'بە دووری (١٨) كم دەكەوێتە خۆرهەڵاتی شاری هەولێر، (٣٩٠م) لە ئاستی رووی دەریاوە بەرزە، لە دوو رێگاوە بۆی دەڕۆین یەكێكیان لە شەقڵاوە و ئەوی تریان لە رێگای كۆیەوە، ژمارەیەكی زۆر لە لە هاوڵاتیان و سەیرانكاران رووی تێدەكەن.',
          'images/hanara.jpg'),
      'en': Item(
          'a1',
          'HANARA RECREATION GROUND',
          'Hanara lies 18 kilometers west of Erbil and is 390 meter above sea level. Hanara recreation, which is visited by tourists in several occasions, can be reached via Shaqlawa Summer Resort or the city of Koya.',
          'images/hanara.jpg'),
    },
    {
      'ku': Item(
          'a2',
          'رووباری جه‌لی',
          'بە دووری (٩٥) كم دەكەوێتە باكووری خۆرهەڵاتی شاری هەولێر، رووباری جەلی بەنێو گوندی سماقولی دەڕوات كە (٢٤) كم لە باكووری خۆرئاوای شارۆچكەی كۆیە دوورە‌. ئە‌م شوێنە سروشتێكی جوانى هە‌یە، پێكهاتووە لە‌ دۆڵێكی نیمچە‌ فراوان، گە‌شتیار بۆ سەیران بۆ چارە‌سەری روو لە ناوچەكە دەكات، ئاوەكەی رووبار بەكار دێت بۆ چارەسەری نەخۆشیەكانی پێست. ',
          'images/hanara.jpg'),
      'en': Item(
          'a2',
          'Jelly River',
          'The Jelly River is 75 kilometers northeast of Erbil and 24 kilometers from Koy Sanjaq. It passes through Smaqoli valley, which is located 21 kilometers northwest of the city. It is 600 meters above sealevel and features stunning landscapes which spread wide and far through a vast valley covered with orchards and trees, This well is widely visited for the purpose of several skin disease remedy and also for rheumatic illnesses and back, neck pains. The flow size exceeds 12 inches and has a constant temperature of 38 Celsius. There are two pools: one is 6x6 meters and the other is circular with a diameter of 2 meters. ',
          'images/rubari_jali.jpg'),
    },
  ];

  Map<String, String> description = {
    'ku':
        'مێژووەكەی دەگەڕێتەوە بۆ هەزارەی شەشەمی پ.ز وەك لە نووسراوە سۆمەری و بابلیەكاندا بە ( اروبیلم – اربێلا – اروبل – اربائیلۆ ) ناوی براوە كە لەو سەردەمە مەڵبەندی پەرستنی خواوەندی عه‌شتار بووە، لە تشرینی یەكەمی ساڵی ( 331 ) پ.ز شەڕێكی تووند لە نێوان سوپای داریۆشی فارسی و ئەسكەندەری مەقدۆنی روودەدات لە ( گەلی كرانیك ) كە ( 30 ) كم لە هەولێر دوورە لە نزیك گوندی ( گۆكمێلا ) لە دەستە راستی زێی گەورە و لە بەر شارەزا نەبوونی داریۆش بە تەواوی لە ناوچەكە جەنگاوەرەكانی خۆی لە كەناری زێیەكە كۆ دەكاتەوە بە پێچەوانەوە ئەسكەندەری مەقدۆنی هێرش دەكاتە سەر داریۆش و بەسەر سوپایەكەی زاڵ دەبێت بەمەش ئیمپراتۆریەتی فارس كۆتایی پێدێت، مێژوونووسە یۆنانیە كۆنەكان ناوی هەولێر لە ناو كتێبەكاندا وەكو خۆی تۆمار دەكەن ئەمەش وای كرد سەرنجی هەموو دونیا بۆ كوردستان رابكێشێت و ناوی هەولێر لە ئەنجامی جەنگی ئەربێلا بكەوێتە ناو تابلۆ و بەڵگەنامە و هونەرە مێژووییەكانی ئەوروپاوە،بناغەیەكی پتەوی بۆ ناساندنی رۆژهەڵات و كوردستان دامەزراند .',
    'en':
        'Erbil city is the capital of Kurdistan Region Government, the oldest city with continuous residentially. This city is regarded as one of the most deep-rooted Governorate in the area, its history begins before A.D. The city is located at the height of 418 m sea level, in accordance with historical references, the city was established 6000 prior to A.D. The name of Erbil city has been found in the Somarian transcripts (with different shapes and Somarian Alphabetic) ; such as (Urbilam, Arbil, Urbl and Arba Ilo) . The city was the main station for The God Ashtar which was the main goddess which was worshiped at that era. Most of the historians and researchers have studied the history of this important city, which is regarded an important subject for many artists, history studiers and other researchers even in urope. The city is a key element for eastern part and Kurdistan Region defining.'
  };

  List<Map<String, Item>> get tourPlaces {
    return _tourPlaces;
  }
}
