import 'package:flutter/material.dart';

class Recomendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //overflow fixed
      appBar: AppBar(
        elevation: 50,
        title: Text(
          ""
          "Recomendações",
          style: TextStyle(fontFamily: 'Merienda-Bold'),
        ),
        centerTitle: true,
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/virus.jpg'),
                fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 18, left: 18),
          child: Container(
            height: 500,
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
                    offset: Offset(0, 1),
                    color: Colors.blue.withOpacity(0.5),
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 50),
                    Container(
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[400],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              color: Colors.blue.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 4,
                            )
                          ]),

                      child: Center(
                        child: Text(
                          'Fique em Casa!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Merienda-Bold',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),


                    Container(
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[400],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              color: Colors.blue.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 4,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Lave as Mãos!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[400],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              color: Colors.blue.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 4,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Use Mascara!!',
                          style: TextStyle(
                            fontFamily: 'Merienda-Bold',
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[400],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              color: Colors.blue.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 5,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Use Ácool em Gel!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
