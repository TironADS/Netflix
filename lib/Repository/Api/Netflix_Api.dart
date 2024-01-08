import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix/Repository/Api/api_client.dart';

import '../Model_Class/NetflixModel.dart';

class NetflixApi{
  ApiClient apiClient=ApiClient();

  Future<NetflixModel>getNetflix({required String name})async{
    String path  ='https://netflix54.p.rapidapi.com/search/?query=${name}&offset=0&limit_titles=50&limit_suggestions=20&lang=en';
    var body={};

    Response response=await apiClient.invokeAPI(path, 'GET', body);
    return NetflixModel.fromJson(jsonDecode(response.body));

  }

}
