import 'package:dio/dio.dart';
import 'package:revieuus/app/utils/custom_exception.dart';
import 'package:revieuus/app/utils/error_util.dart';
import 'package:revieuus/core/api/base_api.dart';
import 'package:revieuus/core/api/messages.dart';
import 'package:revieuus/core/model/photo_model.dart';

class HomeService extends BaseAPI {

  List<AlbumModel> data = [];


  Future<List<AlbumModel>> getAllAlbum() async {
    try {
      var response = await Dio().get("$baseUrl");
      switch (response.statusCode) {
        case SERVER_OKAY:
          data = (response.data as List)
              .map((e) => AlbumModel.fromJson(e))
              .toList();
          return data;
        case REQUEST_CANNOT_BE_PROCESSED:
          throw 'Wrong Credential';
        case WRONG_CREDENTIALS:
          throw CREDENTIALS_ARE_WRONG;
        case POORLY_FORMATTED_REQUEST:
          throw 'POORLY_FORMATTED_REQUEST';
        case RESOURCE_NOT_FOUND:
          throw 'RESOURCE_NOT_FOUND';

        default:
          throw 'Error from Json';
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }
}
