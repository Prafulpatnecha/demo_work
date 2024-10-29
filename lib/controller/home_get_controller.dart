import 'package:get/get.dart';
import 'package:untitled/controller/apihelper.dart';
import 'package:untitled/model/api_model.dart';

class HomeGetController extends GetxController
{
  ApiMusicModel? apiModel;


  HomeGetController()
  {
    apiFetch();
  }

  Future<ApiMusicModel?> apiFetch()
  async {
    final json = await ApiHelper.apiHelper.apiCalling();
    apiModel = ApiMusicModel.fromJson(json);
    return apiModel;
  }
}