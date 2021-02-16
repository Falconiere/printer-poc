import 'package:http/http.dart' as http;

import '../constants/constants.dart';
import '../models/user.dart';

var constants = Constants();

class UserApi {
  Future<UserModel> login({email, password}) async {
    try {
      final response = await http
          .post(constants.apiUrl + "/server/login", body: {email, password});
    } catch (e) {
      print(e);
      return new UserModel();
    }
  }
}
