// import 'package:http/http.dart' as rawHttp;
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';


Dio dio = new Dio();

// dio.httpClientAdapter.onHttpClientCreate = (client) {
//     // client.findProxy = (uri) {
//     //     //proxy all request to localhost:8888
//     //     return "PROXY localhost:8888";
//     // };
// };
// dio.HttpClientAdapter

// class Http {
//   Map<String, String> getHeaders ([Map<String, String> headers]) {
//     Map<String, String> h = Map();
//     h.addAll({
//       'token': 'xxx'
//     });
//     if (headers is Map) {
//       h.addAll(headers);
//     }
//     dynamic o = {
//       'a': '222'
//     };
//     print(headers);
//     print(headers is Map);
//     //
//     return h;
//   }
//   Future<dynamic> fetch (String url, String method, [dynamic body, dynamic config]) {
//     Map<String, String> headers = this.getHeaders();
//     Future<dynamic> feature;
//     // switch (method) {
//     //   case 'get':
//     //     feature = rawHttp.get(url, headers: headers);
//     //     break;
//     //   case 'post':
//     //     feature = rawHttp.post(url, headers: headers);
//     //     break;
//     // }
//     switch (method) {
//       case 'get':
//         feature = dio.get(url);
//         break;
//       case 'post':
//         feature = dio.post(url);
//         break;
//     }
//     return feature;
//   }
//   Future<dynamic> post (String url, dynamic body, config) {
//     return this.fetch(url, 'post', body, config);
//   }
//   Future<dynamic> get (String url, [dynamic data, config]) {
//      return this.fetch(url, 'get', {}, config);
//   }
// }

// Http http = Http();