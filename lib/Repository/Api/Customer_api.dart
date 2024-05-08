import 'dart:convert';

import 'package:http/http.dart';

import '../ModelClass/login_model.dart';
import 'api_client.dart';


class Loginapi {
  ApiClient apiClient = ApiClient();


  Future<Loginmodel> getLogin(String phoneNumber) async {
    String trendingpath = 'http://192.168.1.7:5000/api/customer/login';
    var body = {

      "phoneNumber":phoneNumber
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return Loginmodel.fromJson(jsonDecode(response.body));
  }
}