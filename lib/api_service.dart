import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';

Map<String, dynamic> data = {};

class ApiService {
  Uri getUrl(bool category) {
    if (category == true) {
      return Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint1);
    }
    return Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint2);
  }

  Future getIngredients(name, category) async {
    var url = getUrl(category);
    try {
      http.Response response = await http.post(url,
          body: jsonEncode({'product_name': name.toLowerCase()}));
      if (200 == response.statusCode) {
        data = json.decode(response.body);
        return data;
      } else {
        return {"error": -1};
      }
    } catch (e) {
      return {"error": -1};
    }
  }

  Future<Map> getIngredientsforBarcode(name, category) async {
    var url = getUrl(category);
    try {
      var response =
          await http.post(url, body: {'product_name': name.toLowerCase()});
      if (200 == response.statusCode) {
        data = json.decode(response.body);
        return data;
      } else {
        return {"error": -1};
      }
    } catch (e) {
      return {"error": -1};
    }
  }

  Future<Map> getRating(name, ingredients, subcategory, category) async {
    var url = Uri.parse(
        "${ApiConstants.baseUrl}${ApiConstants.fetchendpoint}?product_name=$name&ingredients=$ingredients&sub_category=$subcategory&category=$category");
    try {
      var response = await http.post(url);
      if (200 == response.statusCode) {
        data = json.decode(response.body);
        return data;
      } else {
        return {"error": -1};
      }
    } catch (e) {
      return {"error": -1};
    }
  }
}
