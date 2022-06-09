
import 'package:flutter/material.dart';



class QrScreen extends StatelessWidget{
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const QrWidget();
  }
}

class QrWidget extends StatelessWidget {

  const QrWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codigo QR'), 
        backgroundColor: Colors.grey,
        elevation: 30,
        ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          containerlogo(),
          ContainerQR()
        ],
      ),
    );
  }
}

Widget containerlogo(){
  return Container(
    margin: const EdgeInsets.only(
        top: 175,
        right: 50,
        left: 50
    ),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        color: Colors.grey[800],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0,2),
          )
        ],
    ),
    child:
      Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset("assets/images/alan.png",
        height: 150,
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
        color: Colors.white,
        
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
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0,2),
          )
        ],
        color: Colors.grey[800]
    ),
    child:
    Container(
      height: 250,
      width: 200,
      padding: const EdgeInsets.only(bottom: 40),
      /*child: Image.asset("images/qr.png",
        height: 200,
        alignment: Alignment.center,
      ),*/
    ),
  );
}
