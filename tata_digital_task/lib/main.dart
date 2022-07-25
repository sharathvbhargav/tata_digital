import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tata_digital_task/helper/controllers/api_controller.dart';
import 'package:tata_digital_task/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<ApiController>().getNewsList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}