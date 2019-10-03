import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';


class MyTripInfoPluginOptions extends LayerOptions {
  final String text;
  MyTripInfoPluginOptions({this.text: ""});
}

class TripInfoPlugin implements MapPlugin {
  @override
  Widget createLayer(
      LayerOptions options, MapState mapState, Stream<Null> stream) {
    if (options is MyTripInfoPluginOptions) {
        var style = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26.0,
        color: Colors.black45,
      );
      return Text(
        options.text,
        style: style,
      );
    }
    throw Exception('Unknown options type for TripInfoPlugin'
    ': $options');
  }

  @override
  bool supportsLayer(LayerOptions options){
    return options is MyTripInfoPluginOptions;
  }

}