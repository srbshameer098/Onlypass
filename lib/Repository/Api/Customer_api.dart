import 'dart:convert';

import 'package:http/http.dart';

import '../ModelClass/login_model.dart';
import 'api_client.dart';


class Loginapi {
  ApiClient apiClient = ApiClient();


  Future<Loginmodel> getLogin(String phoneNumber) async {
    String trendingpath = 'http://178.18.254.224:8654/api/customer/login';
    var body = {

      "phoneNumber":phoneNumber
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return Loginmodel.fromJson(jsonDecode(response.body));
  }
}