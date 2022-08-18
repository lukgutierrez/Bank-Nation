import 'package:flutter/material.dart';

class VoucherDigital extends StatelessWidget {
  const VoucherDigital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFFF32AFDF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: Image(image: AssetImage("assets/image/money.png"))),
                Text(
                  "Transferir",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
