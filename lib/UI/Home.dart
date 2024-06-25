import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'package:onlypass/bloc/Fecilities/fecilities_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Repository/ModelClass/FacilityModel.dart';
import 'Detailed_Page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:shimmer/shimmer.dart';

bool _visible1 = false;
bool _location = true;

late GoogleMapController _mapController;
late List<FacilityModel> data;
List<int> _currentIndex = [];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _controller = CarouselController();
  String _currentAddress = '';
  String _currentAddress1 = '';
  double lat = 0.0;
  double long = 0.0;
  late StreamSubscription<Position> positionStream;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FecilitiesBloc>(context).add(FetchFecilities());
    _fetchInitialPosition();
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) {
      if (position != null) {
        setState(() {
          lat = position.latitude;
          long = position.longitude;
        });
        print('${position.latitude}, ${position.longitude}');
        _getAddressFromCoordinates(position.latitude, position.longitude);
      }
    });
  }

  @override
  void dispose() {
    positionStream.cancel();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Future<void> _fetchInitialPosition() async {
    try {
      Position position = await _determinePosition();
      setState(() {
        lat = position.latitude;
        long = position.longitude;
      });
      _getAddressFromCoordinates(position.latitude, position.longitude);
    } catch (e) {
      print(e);
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can access the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> _getAddressFromCoordinates(double lat, double long) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
      Placemark place = placemarks[0];

      setState(() {
        _currentAddress = place.locality ?? '';
        _currentAddress1 = place.subAdministrativeArea ?? '';
        print('${_currentAddress1}-ghvgh');
      });
    } catch (e) {
      print(e);
    }
  }

  String loca = '';
  final searchfilter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///-----------Google Map  -------------------///

              // Expanded(
              // flex: 2, // Adjust flex value as needed
              // child:MapView
              //       showMap() {
              // return _mapView.show(new MapOptions(
              // mapViewType: MapViewType.normal,
              // initialCameraPosition:
              // new CameraPosition(new Location(10.31264, 123.91139), 12.0),
              // showUserLocation: true,
              // ));
              // }
              //       ),

              Stack(children: [
                SizedBox(
                  width: 394.w,
                  height: _visible1 == true ? 618.h : 244.h,
                  child: Image.asset(
                    "assets/image/MapPreview.png",
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                    bottom: 20.h,
                    right: 30.w,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _visible1 = !_visible1;
                        });
                      },
                      child: Image.asset(
                        "assets/icons/fullScreen.png",
                        width: 24.w,
                        height: 24.h,
                      ),
                    )),

                ///-----------Search Container  -------------------///

                Positioned(
                  top: 60,
                  left: 25,
                  child: Container(
                    width: 345.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: .5.w,
                            style: BorderStyle.solid),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.h, right: 1.3.w),
                            child: Icon(Icons.search_outlined,
                                size: 28.sp, color: const Color(0xffb7b7b7)),
                          ),
                          SizedBox(
                            width: 162.w,
                            child: TextFormField(
                              cursorColor: const Color(0xff262323),
                              controller: searchfilter,
                              minLines: 1,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: loca = _currentAddress,
                                hintStyle:
                                    const TextStyle(color: Color(0xff191919)),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Text(
                            "- 6 km around",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            // _visible==true?
                            child: Container(
                              width: 42.w,
                              // height: 40,
                              //  color: Color(0xfff0f0f0),
                              color: const Color(0xfff0f0f0),
                              child: Center(
                                  child: _visible1 == true
                                      ? Center(
                                          child: SvgPicture.asset(
                                            'assets/icons/filter1.svg',
                                            width: 24.w,
                                            // height: 24.h,
                                            color: const Color(0xff191919),
                                          ),
                                        )
                                      : Center(
                                          child: Image.asset(
                                            'assets/icons/notificationbell.png',
                                            width: 24.w,
                                            // height: 24.h,
                                            color: const Color(0xff191919),
                                          ),
                                        )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),

              ///-----------Head Line  -------------------///
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                child: Text('Find facilities near you',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat')),
              ),

              ///-----------Tab Bar  -------------------///

              Stack(children: [
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.w, horizontal: 24.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              width: 44.w,
                              height: 28.w,
                              color: const Color(0xffb7b7b7),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.5.h, horizontal: 13.5.w),
                                child: SvgPicture.asset(
                                  'assets/icons/filter1.svg',
                                  width: 15.57.w,
                                  height: 15.57.h,
                                  color: const Color(0xff191919),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: ButtonsTabBar(
                              buttonMargin: EdgeInsets.only(left: 20.w),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 14.w),
                              height: 30.h,
                              radius: 0.r,
                              backgroundColor: Colors.black,
                              unselectedBackgroundColor: Colors.grey[300],
                              unselectedLabelStyle:
                                  const TextStyle(color: Colors.black),
                              labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              tabs: const [
                                Tab(
                                    child:
                                        Text('All(${38})', style: TextStyle())),
                                Tab(
                                    child: Text(
                                  'Gym(${21})',
                                  style: TextStyle(),
                                )),
                                Tab(
                                    child: Text(
                                  'Pool(${14})',
                                  style: TextStyle(),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ///-----------1st Container  -------------------///
                          Container(
                            width: 393.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.w),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 393.h,
                                    height: 440.h,
                                    child: BlocBuilder<FecilitiesBloc,
                                            FecilitiesState>(
                                        builder: (context, state) {
                                      if (state is FecilitiesblocLoading) {
                                        ///  Shimmer effect  ///

                                        return Container(
                                          child: Expanded(
                                            child: Shimmer.fromColors(
                                              baseColor: Color(0xFFE7E7E7),
                                              highlightColor: Colors.white,
                                              child: ListView.builder(
                                                itemBuilder: (_, __) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: 400.w,
                                                        height: 200.h,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        width: 400.w,
                                                        height: 20.h,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Container(
                                                        width: 400.w,
                                                        height: 30.h,
                                                        color: Colors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                itemCount: 6,
                                              ),
                                            ),
                                          ),
                                        );

                                        // Center(
                                        //   child: CircularProgressIndicator(strokeCap: StrokeCap.round,
                                        //     backgroundColor: Color(0xff00ff00),
                                        //     valueColor: AlwaysStoppedAnimation(
                                        //         Color(0xff191919),),
                                        //     strokeWidth: 7,
                                        //   ),
                                        // );
                                      }
                                      if (state is FecilitiesblocError) {
                                        return RefreshIndicator(
                                          onRefresh: () async {
                                            return BlocProvider.of<
                                                    FecilitiesBloc>(context)
                                                .add(FetchFecilities());
                                          },
                                          child: SingleChildScrollView(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            child: SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .9.h,
                                                // color: Colors.red,
                                                child: const Center(
                                                    child: Text(
                                                        'Oops something went wrong'))),
                                          ),
                                        );
                                      }
                                      if (state is FecilitiesblocLoaded) {
                                        data = BlocProvider.of<FecilitiesBloc>(
                                                context)
                                            .fecilitiesModel;
                                        for (int i = 0; i < data.length; i++) {
                                          for (int j = 0;
                                              j < data[i].images!.length;
                                              j++) {
                                            _currentIndex.add(0);
                                          }
                                        }

                                        {
                                          return ListView.separated(
                                            scrollDirection: Axis.vertical,
                                            itemCount: data.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              if (searchfilter.text.isEmpty) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (builder) =>
                                                                Detailed_Page(
                                                                  fecilityModel:
                                                                      data[
                                                                          index],
                                                                )));
                                                  },
                                                  child: SizedBox(
                                                    child: Container(
                                                      width: 300.w,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      child: Column(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              CarouselSlider
                                                                  .builder(
                                                                itemBuilder: (BuildContext
                                                                            context,
                                                                        int
                                                                            itemIndex,
                                                                        int
                                                                            pageViewIndex) =>
                                                                    data[index].images!.length >
                                                                            itemIndex
                                                                        ? Container(
                                                                            child:
                                                                                Image.network(
                                                                              data[index].images![itemIndex].toString(),
                                                                              width: 356.w,
                                                                              height: 182.h,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          )
                                                                        : const SizedBox(),
                                                                options:
                                                                    CarouselOptions(
                                                                  onPageChanged:
                                                                      (i, reason) {
                                                                    setState(
                                                                        () {
                                                                      _currentIndex[
                                                                          index] = i;
                                                                    });
                                                                  },
                                                                  height: 182.h,
                                                                  viewportFraction:
                                                                      1,
                                                                  initialPage:
                                                                      0,
                                                                  enableInfiniteScroll:
                                                                      true,
                                                                  reverse:
                                                                      false,
                                                                  autoPlay:
                                                                      false,
                                                                  autoPlayInterval:
                                                                      const Duration(
                                                                          seconds:
                                                                              3),
                                                                  autoPlayAnimationDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              800),
                                                                  autoPlayCurve:
                                                                      Curves
                                                                          .fastOutSlowIn,
                                                                  enlargeCenterPage:
                                                                      true,
                                                                  enlargeFactor:
                                                                      0.1,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                ),
                                                                itemCount:
                                                                    data[index]
                                                                        .images!
                                                                        .length,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 170
                                                                            .h),
                                                                child: Center(
                                                                  child:
                                                                      AnimatedSmoothIndicator(
                                                                    activeIndex:
                                                                        _currentIndex[
                                                                            index],
                                                                    count: data[
                                                                            index]
                                                                        .images!
                                                                        .length,
                                                                    effect: WormEffect(
                                                                        dotColor:
                                                                            const Color(
                                                                                0xffbdbdbd),
                                                                        dotHeight:
                                                                            6.h,
                                                                        dotWidth:
                                                                            6.w,
                                                                        activeDotColor:
                                                                            Colors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        5.h),
                                                            child: Row(
                                                              children: [
                                                                Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width:
                                                                        230.w,
                                                                    child: Text(
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,

                                                                      ///--image name--///

                                                                      data[index]
                                                                          .facilityName
                                                                          .toString(),
                                                                      style:
                                                                          TextStyle(
                                                                        color: Theme.of(context)
                                                                            .colorScheme
                                                                            .onSecondary,
                                                                        fontSize:
                                                                            16.sp,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 60.w,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .location_on_outlined,
                                                                  size: 14.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                ),

                                                                ///-- distance --///

                                                                Text(
                                                                  '${150}m',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .onSecondary,
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          // Place the ListView.separated for the indicator here
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              ///--Rating --///

                                                              Icon(
                                                                Icons.star,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onSecondary,
                                                              ),
                                                              Text(
                                                                '${4.3} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                ),
                                                              ),

                                                              ///--Review count --///
                                                              SizedBox(
                                                                width: 85.w,
                                                                child: Text(
                                                                  '(${data[index].review!.length} Reviews)',
                                                                  style:
                                                                      TextStyle(
                                                                    color: const Color(
                                                                        0xffa2a2a2),
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 50.w,
                                                              ),

                                                              ///   amenities   ///

                                                              SizedBox(
                                                                width: 5 * 30.w,
                                                                height: 24.h,
                                                                child: ListView
                                                                    .separated(
                                                                  // Set reverse based on amenity list length
                                                                  reverse: data[
                                                                              index]
                                                                          .amenities!
                                                                          .length <=
                                                                      4,
                                                                  physics: const ScrollPhysics(
                                                                      parent:
                                                                          NeverScrollableScrollPhysics()),
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  shrinkWrap:
                                                                      false,
                                                                  itemCount: data[
                                                                          index]
                                                                      .amenities!
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          int position) {
                                                                    if (position <=
                                                                        3) {
                                                                      return Container(
                                                                        width:
                                                                            24.w,
                                                                        height:
                                                                            24.h,
                                                                        decoration:
                                                                            const BoxDecoration(color: Color(0xfff0f0f0)),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Center(
                                                                              child: Image.network(
                                                                                data[index].amenities![position].iconUrl!.toString(),
                                                                                width: 19.w,
                                                                                height: 19.h,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    } else if (position ==
                                                                        4) {
                                                                      int balance =
                                                                          data[index].amenities!.length -
                                                                              4;
                                                                      return Container(
                                                                        width:
                                                                            24.w,
                                                                        height:
                                                                            24.h,
                                                                        decoration:
                                                                            const BoxDecoration(color: Color(0xfff0f0f0)),
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Center(
                                                                                child: Text("+$balance",
                                                                                    style: const TextStyle(
                                                                                      color: Colors.black,
                                                                                    ))),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      return const SizedBox();
                                                                    }
                                                                  },
                                                                  separatorBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          int index) {
                                                                    return SizedBox(
                                                                      width:
                                                                          8.w,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );

                                                ///  searchfilter  ///
                                              } else if (data[index]
                                                  .address
                                                  .toString()
                                                  .toLowerCase()
                                                  .contains(searchfilter.text
                                                      .toLowerCase()
                                                      .toLowerCase())) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (builder) =>
                                                                Detailed_Page(
                                                                  fecilityModel:
                                                                      data[
                                                                          index],
                                                                )));
                                                  },
                                                  child: SizedBox(
                                                    child: Container(
                                                      width: 300.w,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      child: Column(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              CarouselSlider
                                                                  .builder(
                                                                itemBuilder: (BuildContext
                                                                            context,
                                                                        int
                                                                            itemIndex,
                                                                        int
                                                                            pageViewIndex) =>
                                                                    data[index].images!.length >
                                                                            itemIndex
                                                                        ? Container(
                                                                            child:
                                                                                Image.network(
                                                                              data[index].images![itemIndex].toString(),
                                                                              width: 356.w,
                                                                              height: 182.h,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          )
                                                                        : const SizedBox(),
                                                                options:
                                                                    CarouselOptions(
                                                                  onPageChanged:
                                                                      (i, reason) {
                                                                    setState(
                                                                        () {
                                                                      _currentIndex[
                                                                          index] = i;
                                                                    });
                                                                  },
                                                                  height: 182.h,
                                                                  viewportFraction:
                                                                      1,
                                                                  initialPage:
                                                                      0,
                                                                  enableInfiniteScroll:
                                                                      true,
                                                                  reverse:
                                                                      false,
                                                                  autoPlay:
                                                                      false,
                                                                  autoPlayInterval:
                                                                      const Duration(
                                                                          seconds:
                                                                              3),
                                                                  autoPlayAnimationDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              800),
                                                                  autoPlayCurve:
                                                                      Curves
                                                                          .fastOutSlowIn,
                                                                  enlargeCenterPage:
                                                                      true,
                                                                  enlargeFactor:
                                                                      0.1,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                ),
                                                                itemCount:
                                                                    data[index]
                                                                        .images!
                                                                        .length,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 170
                                                                            .h),
                                                                child: Center(
                                                                  child:
                                                                      AnimatedSmoothIndicator(
                                                                    activeIndex:
                                                                        _currentIndex[
                                                                            index],
                                                                    count: data[
                                                                            index]
                                                                        .images!
                                                                        .length,
                                                                    effect: WormEffect(
                                                                        dotColor:
                                                                            const Color(
                                                                                0xffbdbdbd),
                                                                        dotHeight:
                                                                            6.h,
                                                                        dotWidth:
                                                                            6.w,
                                                                        activeDotColor:
                                                                            Colors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        5.h),
                                                            child: Row(
                                                              children: [
                                                                Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width:
                                                                        230.w,
                                                                    child: Text(
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,

                                                                      ///--image name--///

                                                                      data[index]
                                                                          .facilityName
                                                                          .toString(),
                                                                      style:
                                                                          TextStyle(
                                                                        color: Theme.of(context)
                                                                            .colorScheme
                                                                            .onSecondary,
                                                                        fontSize:
                                                                            16.sp,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 60.w,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .location_on_outlined,
                                                                  size: 14.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                ),

                                                                ///-- distance --///

                                                                Text(
                                                                  '${150}m',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .onSecondary,
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          // Place the ListView.separated for the indicator here
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              ///--Rating --///

                                                              Icon(
                                                                Icons.star,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onSecondary,
                                                              ),
                                                              Text(
                                                                '${4.3} ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                ),
                                                              ),

                                                              ///--Review count --///
                                                              SizedBox(
                                                                width: 85.w,
                                                                child: Text(
                                                                  '(${data[index].review!.length} Reviews)',
                                                                  style:
                                                                      TextStyle(
                                                                    color: const Color(
                                                                        0xffa2a2a2),
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 50.w,
                                                              ),
                                                              SizedBox(
                                                                width: 5 * 30.w,
                                                                height: 24.h,
                                                                child: ListView
                                                                    .separated(
                                                                  // Set reverse based on amenity list length
                                                                  reverse: data[
                                                                              index]
                                                                          .amenities!
                                                                          .length <=
                                                                      4,
                                                                  physics: const ScrollPhysics(
                                                                      parent:
                                                                          NeverScrollableScrollPhysics()),
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  shrinkWrap:
                                                                      false,
                                                                  itemCount: data[
                                                                          index]
                                                                      .amenities!
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          int position) {
                                                                    if (position <=
                                                                        3) {
                                                                      return Container(
                                                                        width:
                                                                            24.w,
                                                                        height:
                                                                            24.h,
                                                                        decoration:
                                                                            const BoxDecoration(color: Color(0xfff0f0f0)),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Center(
                                                                              child: Image.network(
                                                                                data[index].amenities![position].iconUrl!.toString(),
                                                                                width: 19.w,
                                                                                height: 19.h,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    } else if (position ==
                                                                        4) {
                                                                      int balance =
                                                                          data[index].amenities!.length -
                                                                              4;
                                                                      return Container(
                                                                        width:
                                                                            24.w,
                                                                        height:
                                                                            24.h,
                                                                        decoration:
                                                                            const BoxDecoration(color: Color(0xfff0f0f0)),
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Center(
                                                                                child: Text("+$balance",
                                                                                    style: const TextStyle(
                                                                                      color: Colors.black,
                                                                                    ))),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      return const SizedBox();
                                                                    }
                                                                  },
                                                                  separatorBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          int index) {
                                                                    return SizedBox(
                                                                      width:
                                                                          8.w,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              return null;
                                            },
                                            separatorBuilder:
                                                (BuildContext context,
                                                    int index) {
                                              return SizedBox(
                                                width: 14.w,
                                              );
                                            },
                                          );
                                        }
                                      } else {
                                        return const SizedBox();
                                      }
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// tab 2///

                  Container(
                    // child:
                    // SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (builder) =>
                        //               Detailed_Page(
                        //                 fecilityModel: data[0],
                        //               )));
                        //     },
                        //     child: const Icon(
                        //         Icons.ac_unit_outlined, color: Colors.black)),
                        Center(
                            child: Text(
                          ' Coming Soon. . . . ',
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.sp),
                        ))
                      ],
                    ),
                    // ),
                  ),

                  /// tab 3 ///

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          ' Coming Soon. . . . ',
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.sp),
                        ))
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
