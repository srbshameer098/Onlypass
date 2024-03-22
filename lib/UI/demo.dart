// // Copyright 2013 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
// import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
//
//
//
//  // final List<GoogleMapExampleAppPage> _allPages = <GoogleMapExampleAppPage>[
// //   const MapUiPage(),
// //   const MapCoordinatesPage(),
// //   const MapClickPage(),
// //   const AnimateCameraPage(),
// //   const MoveCameraPage(),
// //   const PlaceMarkerPage(),
// //   const MarkerIconsPage(),
// //   const ScrollingMapPage(),
// //   const PlacePolylinePage(),
// //   const PlacePolygonPage(),
// //   const PlaceCirclePage(),
// //   const PaddingPage(),
// //   const SnapshotPage(),
// //   const LiteModePage(),
// //   const TileOverlayPage(),
// //   const MapIdPage(),
// // ];
//
// /// MapsDemo is the Main Application.
// class MapsDemo extends StatelessWidget {
//   /// Default Constructor
//   const MapsDemo({super.key});
//
//   void _pushPage(BuildContext context, GoogleMapExampleAppPage page) {
//     Navigator.of(context).push(MaterialPageRoute<void>(
//         builder: (_) => Scaffold(
//           appBar: AppBar(title: Text(page.title)),
//           body: page,
//         )));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('GoogleMaps examples')),
//       body: ListView.builder(
//         itemCount: _allPages.length,
//         itemBuilder: (_, int index) => ListTile(
//           leading: _allPages[index].leading,
//           title: Text(_allPages[index].title),
//           onTap: () => _pushPage(context, _allPages[index]),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   final GoogleMapsFlutterPlatform mapsImplementation =
//       GoogleMapsFlutterPlatform.instance;
//   if (mapsImplementation is GoogleMapsFlutterAndroid) {
//     mapsImplementation.useAndroidViewSurface = true;
//     initializeMapRenderer();
//   }
//   runApp(const MaterialApp(home: MapsDemo()));
// }
//
// Completer<AndroidMapRenderer?>? _initializedRendererCompleter;
//
// /// Initializes map renderer to the `latest` renderer type for Android platform.
// ///
// /// The renderer must be requested before creating GoogleMap instances,
// /// as the renderer can be initialized only once per application context.
// Future<AndroidMapRenderer?> initializeMapRenderer() async {
//   if (_initializedRendererCompleter != null) {
//     return _initializedRendererCompleter!.future;
//   }
//
//   final Completer<AndroidMapRenderer?> completer =
//   Completer<AndroidMapRenderer?>();
//   _initializedRendererCompleter = completer;
//
//   WidgetsFlutterBinding.ensureInitialized();
//
//   final GoogleMapsFlutterPlatform mapsImplementation =
//       GoogleMapsFlutterPlatform.instance;
//   if (mapsImplementation is GoogleMapsFlutterAndroid) {
//     unawaited(mapsImplementation
//         .initializeWithRenderer(AndroidMapRenderer.latest)
//         .then((AndroidMapRenderer initializedRenderer) =>
//         completer.complete(initializedRenderer)));
//   } else {
//     completer.complete(null);
//   }
//
//   return completer.future;
// }