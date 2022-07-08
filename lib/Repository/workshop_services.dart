import 'package:dio/dio.dart';
import 'package:fokabay/Models/register_workshop.dart';
import 'package:fokabay/Network/urls.dart';

class WorkShopServices {
  Dio _dio;

  WorkShopServices(this._dio);

  Future<Response> getWorkShops() async {
    try {
      return await _dio.get(ApiRoutes.getEvent);
      //return ScannedNetworksResponse.fromJson(jsonDecode(response.data));
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> userRegisterWorkshop(
      RegisterWorkshop registerWorkshop) async {
    try {
      return await _dio.post(ApiRoutes.postRegister,
          data: registerWorkshop.toMap());
      //return ScannedNetworksResponse.fromJson(jsonDecode(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
