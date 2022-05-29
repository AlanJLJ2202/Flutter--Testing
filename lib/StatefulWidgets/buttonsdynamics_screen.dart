
import 'package:flutter/material.dart';

class ButtonsDynamicsScreen extends StatefulWidget{

  const ButtonsDynamicsScreen({Key? key}) : super (key: key);

  @override
  State<ButtonsDynamicsScreen> createState() => _ButtonsDynamicState();
}


class _ButtonsDynamicState extends State<ButtonsDynamicsScreen>{
  @override
  initState() {
    super.initState();

  }
  bool isVisibleGreen = true;
  bool isVisibleBlue = true;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: height*0.3,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      elevation: 15,
                      onPressed: (){
                        print('Hola1');
                        setState(() {
                          isVisibleGreen = !isVisibleGreen;
                        });
                        },
                      child: const Text('green', style: TextStyle(color: Colors.white)),
                      color: Colors.green,
                    ),
                    RaisedButton(
                      elevation: 15,
                      onPressed: (){
                        print('Hola2');
                        setState(() {
                          isVisibleBlue = !isVisibleBlue;
                        });
                        },
                      child: Text('blue', style: TextStyle(color: Colors.white)),
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Visibility(
                visible: !isVisibleGreen,
                child: Container(
                  height: 300,
                  width: width,
                  color: Colors.green,
                ),
              ),
              Visibility(
                visible: !isVisibleBlue,
                child: Container(
                  height: 300,
                  width: width,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}