import 'package:flutter/material.dart';
import 'package:weathre/Models/City.dart';
import 'package:weathre/Pages/Home/widgets/container_results.dart';
import 'package:weathre/Pages/Home/widgets/texto_estilo.dart';
import 'package:weathre/Repositories/weather_repository.dart';
import 'package:weathre/controllers/home_page_controller.dart';

class FutureWeather extends StatelessWidget {
  final HomeController homeController;
  final WeatherRepository repository = WeatherRepository();
  FutureWeather(this.homeController);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<City>(
        future: repository.GetCityByName(homeController.controllerCity.text),
        builder: (context, snapchot) {
          if (!snapchot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }
          if (snapchot.hasError) {
            return Center(child: Text("Erro"));
          }
          return ContainerResults(snapchot.data!, homeController);
        });
  }
}
