import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {


  const Location(
      {super.key,
        });

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  String _currentAdess = '';
  String _currentAdess1 = '';
  double lat = 0.0;
  double long = 0.0;

  _getAdressFromCordinates(double lat, double long) async {
    try {
      List<Placemark> Placesmarks = await placemarkFromCoordinates(lat, long);

      Placemark place = Placesmarks[0];

      setState(() {
        _currentAdess = place.locality!;
        _currentAdess1 = place.name!;
        print(_currentAdess);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: Text(
          "Confirm Your Location",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              color: Color(0xff0E697C)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff0E697C),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 23.w, top: 30.h),
              child: Container(
                width: 310.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color(0xff000000))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '${_currentAdess}',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.w, top: 40.h),
              child: GestureDetector(
                onTap: () {
                  _determinePosition();
                  final LocationSettings locationSettings = LocationSettings(
                    accuracy: LocationAccuracy.high,
                    distanceFilter: 100,
                  );
                  StreamSubscription<Position> positionStream =
                  Geolocator.getPositionStream(
                      locationSettings: locationSettings)
                      .listen((Position? position) {
                    setState(() {
                      lat = position!.latitude;
                      long = position.longitude;
                    });
                    print(position == null
                        ? 'Unknown'
                        : '${position.latitude.toString()}, ${position.longitude
                        .toString()}');
                    _getAdressFromCordinates(
                        position!.latitude, position.longitude);
                  });
                },
                child: Container(
                  width: 150.w,
                  height: 40.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }}
