import 'package:http/http.dart' as http;

class XTHttp {
  void post (String url, dynamic body) {
    http.post(url, body: body, headers: {
      // 'xt': ''
    });
  }
  get (String url) {
    return http.get(url, headers: {
      // 'xt': ''
    });
  }
}

XTHttp http33 = XTHttp();