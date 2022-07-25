import 'package:get/get.dart';
import 'package:tata_digital_task/pages/main_page.dart';

class RouteHelper {
  static const String initial = "/";

  static String getInitial() => initial;

  static List<GetPage> routes = [
    //Initial Page
    GetPage(
      name: initial,
      page: (){
        return const MainPage();
      },
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 650)
    ),
  ];
}