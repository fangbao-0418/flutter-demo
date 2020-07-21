import '../../utils/http.dart';
import '../../models/user.dart';

Future<List<User>> fetchHotWordList () {
  return http.get<List<User>>('/cweb/product/hotword/list').then((value) {
    return User.fromJson(value);
  }).then((value) {
    return value;
  });
}

Future<dynamic> fetchMagicHome () {
  return http.get('/ncweb/promotion/magic/getHome');
}
