import 'package:flutter/material.dart';
import 'package:weathre/Models/City.dart';
import 'package:weathre/Pages/Home/widgets/texto_estilo.dart';
import 'package:weathre/controllers/home_page_controller.dart';

class ContainerResults extends StatelessWidget {
  final City cityResulta;
  final HomeController controller;
  ContainerResults(this.cityResulta, this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  TextoEstilo("Temperatura:", Colors.white, 19),
                  SizedBox(
                    width: 10,
                  ),
                  TextoEstilo(
                      cityResulta.Temperatura.toString(), Colors.white, 17),
                  TextoEstilo("C", Colors.white, 13)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextoEstilo("Umidade", Colors.white, 19),
                  SizedBox(
                    width: 10,
                  ),
                  TextoEstilo(cityResulta.Umidade.toString(), Colors.white, 17),
                  TextoEstilo("%", Colors.white, 13),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextoEstilo("Pressao:", Colors.white, 19),
                  SizedBox(
                    width: 10,
                  ),
                  TextoEstilo(cityResulta.Pressao.toString(), Colors.white, 17),
                ],
              )
            ],
          ),
          controller.getIconData(cityResulta)
        ],
      ),
    );
  }
}
