import 'package:flutter/material.dart';

class ActivityBank extends StatelessWidget {
  const ActivityBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF32AFDF),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 35.0,
                height: 35.0,
                child: Image(image: AssetImage("assets/image/act.png"))),
            Text(
              "Tu actividad",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 30.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF32AFDF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.0))
                ],
                color: Colors.white),
            child: Image(image: AssetImage("assets/image/logo2.png")),
          ),
          //******************************************************************************************************+ */
          ListTile(
            title: Text(
              "Trasferencia a JUAN...",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFF0C7287),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("fnso"),
            leading: Image(image: AssetImage("assets/image/logo2.png")),
            trailing: Text(
              "fosdfnods",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFF0C7287),
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
