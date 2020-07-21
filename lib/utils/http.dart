import 'package:dio/dio.dart';

var dio = Dio();

CancelToken token = CancelToken();

class Http {
  Map<String, dynamic> getHeaders([Map<String, String> headers]) {
    Map<String, dynamic> h = Map();
    h.addAll({'xt-platform': 'flutter'});
    if (headers is Map) {
      h.addAll(headers);
    }
    return h;
  }

  Future<dynamic> fetch <T> (String url,
      {String method, dynamic data, Map<String, dynamic> headers}) {
    url = 'https://youxuan-api.hzxituan.com' + url;
    String contentType = Headers.jsonContentType;
    Map<String, dynamic> headers = getHeaders();
    Options options = Options(contentType: contentType, headers: headers);
    Future<dynamic> feature;
    switch (method) {
      case 'get':
        feature = dio.get(url,
            cancelToken: token, options: options);
        break;
      case 'post':
        feature = dio.post<dynamic>(url,
            data: data, cancelToken: token, options: options);
        break;
    }
    return feature.then <T> ((res) {
      dynamic data = res.data;
      if (data['code'] == '00000' && data['success']) {
        return data['data'];
      } else {
        throw data;
      }
    });
  }

  Future<dynamic> post(String url, dynamic body, config) {
    return this.fetch(url, method: 'post');
  }

  Future<dynamic> get <T> (String url, [dynamic data, config]) {
    return this.fetch(url, method: 'get');
  }
}

Http http = Http();
