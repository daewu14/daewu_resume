import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

/// createdby Daewu Bintara
/// Saturday, 03/07/21

class MyGmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(-7.7124110363953875, 110.4526154030783);

      // another location
      // final myLatlng2 = LatLng(1.4521, 103.9198);

      final mapOptions = MapOptions()
        ..zoom = 17
        ..center = LatLng(-7.7124110363953875, 110.4526154030783);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      final marker = Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Daewu House');

      // Another marker
      Marker(
        MarkerOptions()
          // ..position = myLatlng2
          ..map = map,
      );

      final infoWindow =
      InfoWindow(InfoWindowOptions()..content = contentString);
      marker.onClick.listen((event) => infoWindow.open(map, marker));
      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}

var contentString = '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' +
    '<h1 id="firstHeading" class="firstHeading">Daewu</h1>' +
    '<div id="bodyContent">' +
    '<p><b>Daewu</b>, House<b>' +
    '</div>' +
    '</div>';