import 'package:dio/dio.dart';

import 'api_config.dart';



class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  dynamic get(String path,Map<String,dynamic> params) async {
    try {

      final response = await _dio.get(
        ApiConfig.baseUrl+path,
        queryParameters: params,
        options: Options(
          sendTimeout: const Duration(seconds: 1),
          receiveTimeout: const Duration(seconds: 1),
          headers: {
            'x-rapidapi-key': ApiConfig.apiKey,
            'x-rapidapi-host': 'sportapi7.p.rapidapi.com'
          },
        ),
      );

print(response.statusCode);
print(response.statusMessage);
      if (response.statusCode == 200 || response.statusCode == 201) {

        return response.data;
      } else {
        throw Exception(response.statusMessage);
      }
    } on DioException catch(e){
     print('${e.error}');
     print('${e.response?.statusMessage.toString()}');

     print('${e.response?.statusCode}');


    }
  }
}
