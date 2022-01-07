import 'package:http/http.dart' as http;
import 'package:weathre/Models/City.dart';
import 'dart:convert';

class WeatherRepository {
  final String url =
      "http://api.weatherstack.com/current?access_key=d2fc5de80221e2d4173e53ac12c37f79&query=";

  Future<City> GetCityByName(String cityName) async {
    if (cityName == "") {
      return City(0, 0, 0, "iniciando ou nula");
    }
    var urlFinal = url + cityName;
    var response = await http.get(Uri.parse(urlFinal));
    if (response.statusCode == 200) {
      var responseDecode = jsonDecode(response.body);
      var cityReturn = City(
          responseDecode['current']['temperature'],
          responseDecode['current']['pressure'],
          responseDecode['current']['humidity'],
          responseDecode['current']['weather_descriptions'][0]);
      return cityReturn;
    }
    throw Exception();
  }
}
