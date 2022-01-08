import 'package:flutter/material.dart';
import 'package:flutter_app_iuorweioprw/view/recomendations_screen.dart';

class TaglineCard extends StatelessWidget {
  const TaglineCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 230, right: 39),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.blue,
            image: DecorationImage(
              scale: 1.4,
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/doctor.png'),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Recomendações",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: ElevatedButton.icon(  //BOTAO PARA TELA RECOMENDATIONS
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Recomendations();
                              }
                          ));
                  },
                  icon: Icon(Icons.call_missed_outgoing,
                    color: Colors.white,
                  ),
                  label: Text("Ir",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
              ),
            ),
          ],
        ));
  }
}
