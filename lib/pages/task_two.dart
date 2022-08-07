import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({Key? key}) : super(key: key);

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
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Positioned(
                        left: 10.0,
                        bottom: -100,
                        child: Container(
                          color: Colors.white,
                          width: 320.0,
                          height: 150.0,
                          child: Column(
                            children: [
                              Divider(
                                height: 50,
                                color: Colors.transparent,
                              ),
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
                                            "assets/image/dolar.png"),
                                        color: Color(0xFFF32AFDF),
                                      )),
                                ],
                              ),
                              TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: Color(0xFFF39555),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFFF39555)),
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFA9A9A9)),
                                      ),
                                      hintText: "0,00",
                                      hintStyle: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFFF39555))))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //CUENTA ORIGEN

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Cuenta origen",
                        style: TextStyle(
                            color: Color(0xFFF32AFDF),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      width: 320.0,
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
                                Text(r"$ 643.600,00",
                                    style: TextStyle(
                                        color: Color(0xFFF32AFDF),
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image(
                                      image:
                                          AssetImage("assets/image/bajo.png"),
                                      color: Color(0xFFF39555),
                                    ),
                                  ),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Destinatario",
                      style: TextStyle(
                          color: Color(0xFFF32AFDF),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 320.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
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
                              Divider(
                                height: 30.0,
                                color: Colors.transparent,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
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
                                        Text("Agenda")
                                      ],
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
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Divider(
                                  color: Color(0xFFFA9A9A9),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  color: Color(0xFFF32AFDF),
                                  fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFFA9A9A9)),
                                  ),
                                  hintText: "CBU/CVU",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFF32AFDF))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 40.0,
                      width: 320.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFF39555)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ))),
                        onPressed: () {},
                        child: Text("Transferir"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}