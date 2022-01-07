import 'package:flutter/material.dart';
import 'package:weathre/Pages/Home/widgets/containerCity.dart';
import 'package:weathre/Pages/Home/widgets/texto_estilo.dart';
import 'package:weathre/controllers/home_page_controller.dart';

class homeStful extends StatefulWidget {
  const homeStful({Key? key}) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<homeStful> {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tempo"),
      ),
      body: ListView(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextoEstilo("Digite a cidade para pesquisar", Colors.blue, 24),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: homeController.controllerCity,
                  decoration: InputDecoration(
                      label: TextoEstilo("Cidade", Colors.blue, 18)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Pesquisar")),
                const SizedBox(
                  height: 15,
                ),
                ContainerCityWeather(homeController)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
