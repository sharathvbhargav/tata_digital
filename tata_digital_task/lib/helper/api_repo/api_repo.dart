import 'package:get/get.dart';
import 'package:tata_digital_task/helper/api_client/api_client.dart';

class ApiRepo extends GetxService{
  /* Class responsible to send the Endpoint URL : acts like a POJO class  */

  final ApiClient apiClient;
  ApiRepo({required this.apiClient});

  Future<Response> getNewsList() async{
    return await apiClient.getData("news?category=all");
  }
}