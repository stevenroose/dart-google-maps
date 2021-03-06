import 'dart:html' show querySelector;
import 'package:google_maps/google_maps.dart';

void main() {
  final coachella = new LatLng(33.6803003, -116.173894);

  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = coachella
    ..mapTypeId = MapTypeId.TERRAIN
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final rectangle = new Rectangle();

  map.onZoomChanged.listen((_) {
    // Get the current bounds, which reflect the bounds before the zoom.
    final rectOptions = new RectangleOptions()
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 0.8
      ..strokeWeight = 2
      ..fillColor = '#FF0000'
      ..fillOpacity = 0.35
      ..map = map
      ..bounds = map.bounds
      ;
    rectangle.options = rectOptions;
  });
}
