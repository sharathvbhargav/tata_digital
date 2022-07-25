import 'package:get/get.dart';
import 'package:tata_digital_task/helper/api_client/api_client.dart';
import 'package:tata_digital_task/helper/api_repo/api_repo.dart';
import 'package:tata_digital_task/helper/controllers/api_controller.dart';

Future<void> init()async {
  //Api Client
  Get.lazyPut (()=>ApiClient(appBaseUrl: "https://inshorts.deta.dev/"));

  //Api Repo
  Get.lazyPut(() => ApiRepo(apiClient: Get.find()));

  //Api Controllers
  Get.lazyPut(() => ApiController(apiRepo: Get.find()));
}