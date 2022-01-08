import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_iuorweioprw/view/tagline_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';
import 'package:flutter_app_iuorweioprw/controller/controller.dart';

class Body extends StatelessWidget {
  Controller c = Get.put(Controller());
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TaglineCard(),
      Padding(
          padding: EdgeInsets.all(16),
          child: GetBuilder<Controller>(
              init: Controller.to,
              builder: (_) {
                return Column(children: [
                  Row(children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          SizedBox(height: 10), //Sizedbox
                        ]),
                    Spacer(),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          hintText: 'Digite o Nome do País desejado '
                        ),

                        controller: myController,
                      ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Center(
                    child: Container(
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.details),
                          label: Text("Detalhes")),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      "Atualizações Hoje: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    height: 140,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            color: Colors.blue.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 4,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Text(
                              'Novos Casos Confirmados: ' + _.test1,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Total de Casos Confirmados: ' + _.test2,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Total de Pessoas Recuperadas: ' + _.test3,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Total de Pessoas Mortas: ' + _.test4,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Controller.to.getDataFromRepository(myController.text);
                        Controller.to.getInfos(myController.text);
                        Controller.to.getTest2(myController.text);
                        Controller.to.getTest3(myController.text);
                        Controller.to.getTest4(myController.text);
                      },
                      icon: Icon(Icons.arrow_forward),
                      label: Text("Atualizar")),
                  SizedBox(
                    height: 40,
                  ),

                ]);
              }))
    ]);
  }
}
