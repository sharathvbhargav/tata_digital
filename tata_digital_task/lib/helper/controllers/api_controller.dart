import 'package:tata_digital_task/helper/api_repo/api_repo.dart';
import 'package:tata_digital_task/models/news_data.dart';
import 'package:get/get.dart';

class ApiController extends GetxController{
  /* Class responsible to call API
    * Get response return value
    * Segregate data to model class
  */

  final ApiRepo apiRepo;
  ApiController({required this.apiRepo});
  List<dynamic> _newsList = [];
  List<dynamic> get newsList => _newsList;
  Future<void> getNewsList() async {
    Response response = await apiRepo.getNewsList();
    _newsList = [];
    _newsList.addAll(NewsData.fromJson(response.body).data!.toList());
    update();
  }
}