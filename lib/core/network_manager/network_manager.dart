import 'package:casestudy/core/injections/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

abstract class NetworkManager {
  Future<dynamic> post(String url, {dynamic data});
}

@LazySingleton(as: NetworkManager)
class NetworkManagerImpl implements NetworkManager {
  NetworkManagerImpl();

  @override
  Future<dynamic> post(String url, {data}) async {
    try {
      final headers = {
      'Content-Type': 'application/json',
      'Authorization': '5c77a1e2-4ad0-4697-b881-0d973fcf8cf4'
    };
    final response = await getIt<Dio>().request(
      url,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );
    if (response.statusCode == 200) {
  print(response.data);
  return response.data;
} else if (response.statusCode == 400) {
  print("Bad dsdsdsdRequest: ${response.data}");
  // Burada hata işleme veya özel bir işlem yapabilirsiniz.
  return response.data;
} else {
  print(response.statusMessage);
  // Diğer hata durumlarına karşı işlem yapabilirsiniz.
}
    } on DioException catch(e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        print("connectTimeout");
          
          break;
        case DioExceptionType.sendTimeout: print("sendtimeout");
        case DioExceptionType.cancel:print("cancel");
        case DioExceptionType.receiveTimeout:print("receivetimeout");
        case DioExceptionType.badResponse:
        return e.response!.data;
        
        default:
      }

      
      
    }
    }
}
