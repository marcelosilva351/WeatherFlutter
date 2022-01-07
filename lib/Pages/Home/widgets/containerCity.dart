import 'package:flutter/material.dart';
import 'package:weathre/Pages/Home/widgets/future_weather.dart';
import 'package:weathre/controllers/home_page_controller.dart';

class ContainerCityWeather extends StatelessWidget {
  final HomeController controller;

  ContainerCityWeather(this.controller);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(color: Colors.blue, boxShadow: [
        BoxShadow(blurRadius: 5, color: Colors.black54, offset: Offset(1, 2))
      ]),
      child: Padding(
          padding: EdgeInsets.all(10), child: FutureWeather(controller)),
    );
  }
}
