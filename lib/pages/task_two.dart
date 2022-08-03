import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF32AFDF),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image(image: AssetImage("assets/image/money.png"))),
              Text(
                "Transferir",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 80.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF32AFDF),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    )),
                Positioned(
                  left: 40.0,
                  bottom: -120,
                  child: Stack(
                    children: [
                      Container(
                        width: 280.0,
                        height: 180.0,
                        color: Colors.white,
                        //   child: Image(
                        //       image: AssetImage("assets/image/circulo.png")),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Monto",
                                style: TextStyle(
                                  color: Color(0xFFF32AFDF),
                                ),
                              ),
                              SizedBox(
                                  width: 15.0,
                                  height: 15.0,
                                  child: Image(
                                      image: AssetImage(
                                          "assets/image/dolar.png"))),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                width: 280.0,
                height: 100.0,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "0,00",
                          hintStyle: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFF39555)))),
                )),

            //CUENTA ORIGEN

            Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cuenta origen",
                    style: TextStyle(
                        color: Color(0xFFF32AFDF),
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    width: 280.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "N° de cuenta",
                                style: TextStyle(
                                    color: Color(0xFFFA9A9A9),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                r"CA $****96472",
                                style: TextStyle(
                                    color: Color(0xFFF32AFDF),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(r"$ 76.540",
                                  style: TextStyle(
                                      color: Color(0xFFF32AFDF),
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.arrow_downward_outlined,
                                color: Color(0xFFF39555),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            //DESTINATARIO

            Column(
              children: [
                Text(
                  "Destinatario",
                  style: TextStyle(
                      color: Color(0xFFF32AFDF),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal),
                ),
                Container(
                  width: 280.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.75))
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFA9A9A9),
                                        shape: BoxShape.circle,
                                      ),
                                      width: 10.0,
                                      height: 10.0,
                                    ),
                                    Text("Agenda")
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFA9A9A9),
                                      shape: BoxShape.circle,
                                    ),
                                    width: 10.0,
                                    height: 10.0,
                                  ),
                                  Text("Alias")
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF39555),
                                      shape: BoxShape.circle,
                                    ),
                                    width: 10.0,
                                    height: 10.0,
                                  ),
                                  Text(
                                    "CBU/CVU",
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xFFFA9A9A9),
                          )
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "CBU/CVU",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                  width: 200.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFFF39555)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ))),
                    onPressed: () {},
                    child: Text("Transferir"),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
