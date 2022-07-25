import 'package:get/get.dart';
class Dimensions {
  //Scale Factor is Height: 844 (iPhone) : Stores Aspect ratio dimensions
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double listViewTextContainer = screenWidth/3.9;
  static double height10 = screenHeight/84.4;
  static double width10 = screenHeight/84.4;
  static double width20 = screenHeight/42.2;
  static double listImgSize = screenWidth/3.25;
  static double radius20 = screenHeight/42.2;
}