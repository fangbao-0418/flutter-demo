import '../../utils/http.dart';
// import '../../models/user.dart';

Future<dynamic> fetchHotWordList () {
  return http.get('/cweb/product/hotword/list');
}

Future<dynamic> fetchMagicHome () {
  return http.get('/ncweb/promotion/magic/getHome');
}
