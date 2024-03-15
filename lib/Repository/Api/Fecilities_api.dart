import 'dart:convert';

import 'package:http/http.dart';

import 'package:onlypass/Repository/ModelClass/FecilitiesModel.dart';

import 'api_client.dart';

class FecilitiesApi {
  ApiClient apiClient = ApiClient();


  Future<FecilitiesModel> getFecilities() async {
    String trendingpath = 'http://192.168.1.16:5000/api/facilities';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return FecilitiesModel.fromJson(jsonDecode(response.body));
  }
}