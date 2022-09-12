import 'package:cards_cubit/data/endpoint/endpoint.dart';
import 'package:cards_cubit/data/exception/exception_http.dart';
import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  ApiService() {
    dio.options
      ..baseUrl = "https://fakerapi.it/api/v1/"
      ..contentType = "application/Json";
  }

  Future<dynamic> get(Endpoint endpoint) async {
    final response = await dio.get(endpoint.route);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw HttpException(
          message: response.statusMessage ?? "Unknown error occurred");
    }
  }
}
