import '../../utils/http.dart';

Future<dynamic> fetchHotWordList () {
  return http.get('/cweb/product/hotword/list');
}