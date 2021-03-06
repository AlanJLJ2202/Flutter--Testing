import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/StatefulWidgets/buttonsdynamics_screen.dart';
import 'package:testing/StatefulWidgets/codigoqr_screen.dart';
import 'package:testing/StatefulWidgets/dropdown_widget.dart';
import 'package:testing/StatefulWidgets/maps_screen.dart';

class PrincipalScreen extends StatefulWidget {
  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
          title: const Text('Aplicación de Alan',
          style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey.shade600),

      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height:100,
                margin: EdgeInsets.only(bottom: 50),
                child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.amber,
                              child: const Center(child: Text('Logo')),
                            )
                            ),
                            Expanded(
                              flex: 4,
                            child: Container(
                              color: Colors.grey,
                              child: const Center(child: Text('Alan Jesús Lopez Jacinto')),
                            )
                            ),
                            
                        ]
                      ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    
                    itemWidget(
                      Colors.red, 
                      Colors.red.shade300,
                      'Codigo QR', 
                      () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => QrScreen())
                        ),
                      Icons.qr_code
                      ),

                    itemWidget(
                      Colors.blue, 
                      Colors.blue.shade300,
                      'Visibility', 
                      () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ButtonsDynamicsScreen())
                        ), 
                      Icons.view_agenda
                      ),

                    itemWidget(
                      Colors.green, 
                      Colors.green.shade300,
                      'DropDown', 
                      () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => DropDownScreen())
                        ),
                      Icons.list
                      ),

                    itemWidget(
                      Colors.yellow, 
                      Colors.yellow.shade300,
                      'Button anim', 
                       () => null,
                      Icons.radio_button_on
                      ),

                      itemWidget(
                        Colors.purple, 
                      Colors.purple.shade300, 
                      'Maps', 
                       () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MapScreen())
                        ), 
                      Icons.map),

                    
                  ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget itemWidget(Color color, Color colorBoton, String text, Function() funcion, IconData icono) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color
      ),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 40, bottom: 10),
          child: Text(text, 
          style: 
          const TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
          ),
        ElevatedButton(
          onPressed: funcion, 
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(colorBoton),
            elevation: MaterialStateProperty.all<double>(15)
            ),
          child: Icon(icono)
          
          )
      ]),
    );
  }
}
