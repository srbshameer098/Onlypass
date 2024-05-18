import 'dart:convert';

import 'package:http/http.dart';



import '../ModelClass/FacilityModel.dart';
import 'api_client.dart';

class FecilitiesApi {
  ApiClient apiClient = ApiClient();


  Future<List<FacilityModel>> getFecilities() async {
    String trendingpath =  'http://178.18.254.224:8654/api/facilities';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<Map<String, dynamic>> facilityList = jsonResponse.cast<Map<String, dynamic>>();
    return FacilityModel.fromList(facilityList);


  }
}
