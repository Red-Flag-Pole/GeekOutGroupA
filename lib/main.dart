import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var points1 = <LatLng>[
    new LatLng(1.274343, 103.798013),
    new LatLng(1.272842, 103.801570),
  ];
  var points2 = <LatLng>[
    new LatLng(1.272842, 103.801570),
    new LatLng(1.273217, 103.802108),
  ];
  var points3 = <LatLng>[
    new LatLng(1.273217, 103.802108),
    new LatLng(1.274143, 103.801978),
  ];
  var points4 = <LatLng>[
    new LatLng(1.274143, 103.801978),
    new LatLng(1.275945, 103.802025),
  ];
  var points5 = <LatLng>[
    new LatLng(1.275945, 103.802025),
    new LatLng(1.277704, 103.802674),
  ];
  var points6 = <LatLng>[
    new LatLng(1.277704, 103.802674),
    new LatLng(1.276971, 103.803807),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('My Transport v2')),
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng(1.274794, 103.798872), minZoom: 10.0),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                  "https://api.mapbox.com/styles/v1/ruibinchin/ck1au1suv4s7z1cnr64aru279/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnVpYmluY2hpbiIsImEiOiJjazFhaHBveXEyNTQ0M21uaWRuNDQ1dW13In0.vMQ2WL_vco0SbgDY9s_SIQ",
                  additionalOptions: {
                    'accessToken':
                    'pk.eyJ1IjoicnVpYmluY2hpbiIsImEiOiJjazFhaHBveXEyNTQ0M21uaWRuNDQ1dW13In0.vMQ2WL_vco0SbgDY9s_SIQ',
                    'id': 'mapbox.mapbox-streets-v7'
                  }),
              new MarkerLayerOptions(markers: [
                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(1.276971, 103.803807),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: () {
                          print('Marker tapped');
                        },
                      ),
                    )),
                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(1.274343, 103.798013),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: () {
                          print('Marker tapped');
                        },
                      ),
                    )
                )
              ]),
              new PolylineLayerOptions(
                polylines: [
                  new Polyline(
                    points: points1,
                    strokeWidth: 5.0,
                    color: Colors.red
                  ),
                  new Polyline(
                    points: points2,
                    strokeWidth: 5.0,
                    color: Colors.red
                  ),
                  new Polyline(
                      points: points3,
                      strokeWidth: 5.0,
                      color: Colors.red
                  ),
                  new Polyline(
                      points: points4,
                      strokeWidth: 5.0,
                      color: Colors.red
                  ),
                  new Polyline(
                      points: points5,
                      strokeWidth: 5.0,
                      color: Colors.red
                  ),
                  new Polyline(
                      points: points6,
                      strokeWidth: 5.0,
                      color: Colors.red
                  ),
                ]
              )
            ]));
  }
}
