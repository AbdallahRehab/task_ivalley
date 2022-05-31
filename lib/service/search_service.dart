import 'package:task_ivalley/model/getAllAdvertisment_model.dart';
import 'package:task_ivalley/service/GlobalHttp.dart';
import 'package:task_ivalley/utils/api_routes.dart';

class SearchService {
  Future<List<GetAllAdvertismentModel>> searchByKey(
      {required int RowsOfPage,
      required String KeyName,
      required int PageNumber}) async {
    List<GetAllAdvertismentModel> searchModel = [];
    var body = {
      'KeyName': KeyName,
      'RowsOfPage': RowsOfPage,
      'PageNumber': PageNumber,
    };
    GlobalHttpResponse response =
        await GlobalHttp.post(ApiRoutes.search, body: body);
    // OK 200
    if (response.statusCode == 200) {
      searchModel = getAllAdvertismentModelFromJson(response.body!);
      return searchModel;
    }
    return searchModel;
  }
}
