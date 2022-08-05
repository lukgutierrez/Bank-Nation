import 'package:flutter/material.dart';

class TaskThree extends StatelessWidget {
  const TaskThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF32AFDF),
        elevation: 0,
        automaticallyImplyLeading: false,
        //leading: Image(image: AssetImage("assets/image/flex.png")),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 30.0,
                height: 30.0,
                child: Image(image: AssetImage("assets/image/money.png"))),
            Text(
              "Transferir",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 75.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF32AFDF),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                    ),
                  )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Positioned(
                    left: 10.0,
                    bottom: -100,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75))
                          ],
                          color: Colors.white),
                      width: 340.0,
                      height: 800.0,
                      child: Column(
                        children: [
                          //ETAPA N° 1*****************************************************
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Color(0xFFF39555)),
                              width: 340.0,
                              height: 200.0,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Divider(
                                    height: 0.5,
                                    color: Colors.transparent,
                                  ),
                                  SizedBox(
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/image/check.png")),
                                  ),
                                  Text(
                                    "Transferencia Exitosa",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Divider(
                                    height: 0.5,
                                    color: Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //ETAPA N°2************************************************************
                          Container(
                            width: 340.0,
                            height: 190.0,
                            //color: Colors.yellow,
                            child: Column(
                              children: [
                                Divider(
                                  height: 30,
                                  color: Colors.transparent,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Monto",
                                      style: TextStyle(
                                          color: Color(0xFFF32AFDF),
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                        width: 25.0,
                                        height: 25.0,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/image/dolar.png"),
                                          color: Color(0xFFF0889BB),
                                        )),
                                  ],
                                ),
                                Divider(
                                  height: 30,
                                  color: Colors.transparent,
                                ),
                                Text(
                                  "2.570,00",
                                  style: TextStyle(
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFF39555)),
                                )
                              ],
                            ),
                          ),
                          //ETAPA N° 3****************************************************************************************************
                          Container(
                            color: Colors.amber,
                            child: ListTile(
                              leading: Text("Para:"),
                              title: Text("LUCIANO AGUSTIN GUTIERREZ"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
