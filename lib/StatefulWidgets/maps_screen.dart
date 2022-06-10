
import 'package:flutter/material.dart';



class MapScreen extends StatefulWidget{
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

 /* CameraPosition _inititalPosition = CameraPosition(target: LatLng(26.8206, 30.8025));
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }*/

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
  
    return Scaffold(
      body: Stack(
        children: [
          /*GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition:
          )*/
          Container(
            width: width,
            height: 150,
            decoration: 
              BoxDecoration(
                gradient: 
                  LinearGradient(
                    colors: [
                    Colors.white,
                    Colors.grey.shade100,
                    Colors.grey.shade200,
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                    Colors.grey.shade500,
                    Colors.grey.shade600,
                    Colors.grey.shade700,
                    Colors.grey.shade800,
                    Colors.grey.shade900,
                    Colors.black,
                    
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                

              )
            ),
            child: 
              const Center(
                child: 
                  Text('Aqui vendrá un mapa, se supone... :p',
                    style: 
                    TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat'
                      ),                  
                  )
                  ),



          )
        ],
      ),
    );

  }
}