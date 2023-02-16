import '../String File/image_string.dart';
import '../String File/text_string.dart';

///____________ Carousel image list _____________________________

// final urlImages = [
//   'assets/img_1.png',
//   'assets/img_2.png',
//   'assets/img_3.jpg',
//   'assets/img_4.jpg',
//   'assets/img_5.jpg',
// ];

///____________ Carousel image list in dashboard _____________________________

class MyItem {
  String itemName;
  String urlImages;
  String profileImage;
  String Name;
  String subName;
  String etf;
  String time;
  MyItem(this.itemName, this.urlImages, this.profileImage, this.Name,
      this.subName, this.etf, this.time);
}

List<MyItem> items = [
  MyItem(the_Future, img_1, profile_6, marko_Brecic, marko, eTF20, time1),
  MyItem(venus_in_Flower, img_2, profile_5, simonName, simon, eTF22, time2),
  MyItem(metamorphosis, img_3, profile_3, eliaBrecic, elia, eTF40, time3),
  MyItem(deepMind, img_4, profile_1, rashMikaLee, rashMika, eTF22, time4),
  MyItem(down, img_5, profile_2, marko_Brecic, marko, eTF50, time5),
];
