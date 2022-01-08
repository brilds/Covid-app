import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_iuorweioprw/controller/controller.dart';
import 'package:flutter_app_iuorweioprw/view/data_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //overflow fixed
      body: _body(context),
    );
  }
}

_body (context) {
  return Container(
    padding: EdgeInsets.all(32),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/covid.png",
              width: 350,
              height: 350,
            ),
            Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
              child: Text(
                  "Dados COVID-19",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => DataScreen(),
                  )
                  );
                },
                icon: Icon(Icons.coronavirus),
                label: Container(child: Text("Acessar"))
            ),
          ],
      )
      )
  );
}



