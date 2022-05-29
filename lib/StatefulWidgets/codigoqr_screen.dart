
import 'package:flutter/material.dart';



class QrScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return QrWidget();
  }
}

class QrWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          ContainerLogo(),
          ContainerQR()
        ],
      ),
    );
  }
}

Widget ContainerLogo(){
  return Container(
    margin: const EdgeInsets.only(
        top: 175,
        right: 50,
        left: 50
    ),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        color: Colors.white
    ),
    child:
      Container(
      padding: const EdgeInsets.only(top: 30, bottom: 5),
      child: Image.asset("images/logo.png",
        height: 70,
        alignment: Alignment.center,
      ),
    ),
  );
}





Widget ContainerLinea(){
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.only(
        top: 0,
        right: 50,
        left: 50
    ),
    decoration: const BoxDecoration(
        color: Colors.white
    ),
    child: Row(
      children: <Widget>[
        Container(color: Colors.red),
        Container(),
        Container(),
      ],
    ),
  );
}




Widget ContainerQR(){
  return Container(
    margin: const EdgeInsets.only(
        top: 0,
        right: 50,
        left: 50
    ),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        color: Colors.white
    ),
    child:
    Container(
      padding: const EdgeInsets.only(bottom: 40),
      child: Image.asset("images/qr.png",
        height: 200,
        alignment: Alignment.center,
      ),
    ),
  );
}
