import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final LatLng monas = LatLng(-6.175392999999987, 106.82702099999997);
  final LatLng udacoding = LatLng(-6.2969516, 106.6984811);
  final LatLng safari = LatLng(-6.7222994, 106.9514683);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Flutter"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Text(
                    'Monas',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: monas,
                          zoom: 11,
                        ),
                        markers: <Marker>[
                          Marker(
                            markerId: MarkerId('monas'),
                            position: monas,
                            infoWindow: InfoWindow(
                              title: 'Monas',
                            ),
                          ),
                        ].toSet(),
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer()),
                        ].toSet(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Text(
                    'Udacoding',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: udacoding,
                          zoom: 11,
                        ),
                        markers: <Marker>[
                          Marker(
                            markerId: MarkerId('udacoding'),
                            position: udacoding,
                            infoWindow: InfoWindow(
                              title: 'Udacoding',
                            ),
                          ),
                        ].toSet(),
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer()),
                        ].toSet(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Text(
                    'Taman Safari Indonesia',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: safari,
                          zoom: 11,
                        ),
                        markers: <Marker>[
                          Marker(
                            markerId: MarkerId('taman safari indonesia'),
                            position: safari,
                            infoWindow: InfoWindow(
                              title: 'Taman Safari Indonesia',
                            ),
                          ),
                        ].toSet(),
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          Factory<OneSequenceGestureRecognizer>(
                              () => ScaleGestureRecognizer()),
                        ].toSet(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
