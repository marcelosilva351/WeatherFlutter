import 'package:flutter/material.dart';
import 'package:weathre/Models/City.dart';

class HomeController {
  var controllerCity = TextEditingController();

  changeControllerName() {}
  Icon getIconData(City cidade) {
    if (cidade.Pressao == 0 && cidade.Temperatura == 0 && cidade.Umidade == 0) {
      return Icon(
        Icons.add,
        color: Colors.blue,
      );
    } else if (cidade.situacao == "Rain") {
      return Icon(
        Icons.cloud,
        color: Colors.white,
        size: 100,
      );
    } else if (cidade.situacao == "Light Rain") {
      return Icon(
        Icons.cloud_queue,
        color: Colors.white,
        size: 100,
      );
    } else if (cidade.situacao == "Partly cloudy") {
      return Icon(
        Icons.cloud,
        color: Colors.grey[400],
        size: 100,
      );
    } else if (cidade.situacao == "Sunny") {
      return Icon(
        Icons.wb_sunny,
        color: Colors.yellow,
        size: 100,
      );
    } else
      return Icon(Icons.ac_unit_outlined);
  }

  InitState() {
    controllerCity.text = "";
  }
}
