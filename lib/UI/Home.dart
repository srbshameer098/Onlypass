

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:onlypass/bloc/Fecilities/fecilities_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Repository/ModelClass/FacilityModel.dart';
import 'Detailed_Page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

bool _visible1 = false;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

late GoogleMapController _mapController;

late List<FacilityModel> data;

List<int> _currentIndex = [];

class _HomeState extends State<Home> {
  // MapView showMap() {
  //   return _mapView.show(new MapOptions(
  //     mapViewType: MapViewType.normal,
  //     initialCameraPosition:
  //     new CameraPosition(new Location(10.31264, 123.91139), 12.0),
  //     showUserLocation: true,
  //   ));
  // }

  @override
  void initState() {
    BlocProvider.of<FecilitiesBloc>(context).add(FetchFecilities());
    // TODO: implement initState
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  final CarouselController _controller = CarouselController();

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



              Stack(
                children:[ Container(
                  width: 394.w,
                  height:_visible1==true? 244.h:618.h,
                  child: Image.asset("assets/image/MapPreview.png",

                                    fit: BoxFit.cover,
                  ),
                ),

                  Positioned(bottom: 20.h,right: 30.w,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            _visible1 = !_visible1;
                          });


                        },
                          child: Image.asset("assets/icons/fullScreen.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                      )),

          ///-----------Search Container  -------------------///


          Padding(
            padding:  EdgeInsets.only(top: 60.h),
            child: Center(
              child: Positioned(



                child: Container(
                  width: 345.w,
                  height: 40.h,
                  decoration: BoxDecoration(


                      border: Border.all(
                          color: Colors.grey,
                          width: .5.w,
                          style: BorderStyle.solid),
                    color: Colors.white



                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Icon(Icons.search_outlined,
                            size: 28.sp, color: Color(0xffb7b7b7)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          width: 273.w,
                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Kalamassery',

                                  counterText: '- 6 km around  ',
                                  counterStyle: TextStyle(color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xffb7b7b7),
                                  )),
                              onSaved: (String? value) {},
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(

                        // _visible==true?
                        child: Container(
                          width: 42.w,
                          // height: 40,
                          //  color: Color(0xfff0f0f0),
                          color:
                          Color(0xfff0f0f0),
                          child: Center(
                              child: _visible1==true?Image.asset(
                                'assets/icons/filter.png',
                                width: 24.w,
                                // height: 24.h,
                                color:
                                Color(0xff191919),
                              ):Image.asset(
                                'assets/icons/notificationbell.png',
                                width: 24.w,
                                // height: 24.h,
                                color:
                                Color(0xff191919),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),







              ]),



              ///-----------Head Line  -------------------///

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 20.h),
                child: Text('Find facilities near you',
                    style: TextStyle(
                        color: const Color(0xff191919),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat')),
              ),

              ///-----------Tab Bar  -------------------///

              Stack(children: [
                Container(
                  color: Colors.grey,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.w, horizontal: 24.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 28,
                            color: const Color(0xffb7b7b7),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/icons/filter.png',
                                width: 24.w,
                                height: 24.h,
                                color: const Color(0xff191919),
                              ),
                            ),
                          ),
                          TabBar(
                              dividerHeight:0,
                            indicator: BoxDecoration(
                                // Creates border
                                color: Colors.black),
                            tabAlignment: TabAlignment.start,
                            indicatorColor: Colors.transparent,
                            labelColor: Colors.white,
                            isScrollable: true,
                            tabs: [
                              Container(
                                  width: 80.w,
                                  height: 30.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Tab(child: Text('All(${38})'))),
                              Container(
                                  width: 80.w,
                                  height: 30.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Tab(
                                      child: Text(
                                    'Gym(${21})',
                                    style: TextStyle(),
                                  ))),
                              Container(
                                  width: 80.w,
                                  height: 30.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Tab(
                                      child: Text(
                                    'Pool(${14})',
                                    style: TextStyle(),
                                  ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ///-----------1st Container  -------------------///
                          Container(
                            width: 393.w,
                            decoration:
                                const BoxDecoration(color: Color(0xffffffff)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 393.h,
                                      height: 620.h,
                                      child: BlocBuilder<FecilitiesBloc,
                                              FecilitiesState>(
                                          builder: (context, state) {
                                        if (state is FecilitiesblocLoading) {
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
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
                                                      .9,
                                                  // color: Colors.red,
                                                  child: const Center(
                                                      child: Text(
                                                          'Oops something went wrong'))),
                                            ),
                                          );
                                        }
                                        if (state is FecilitiesblocLoaded) {
                                          data =
                                              BlocProvider.of<FecilitiesBloc>(
                                                      context)
                                                  .fecilitiesModel;
                                          for (int i = 0;
                                              i < data.length;
                                              i++) {
                                            for (int j = 0;
                                                j < data[i].images!.length;
                                                j++) {
                                              _currentIndex.add(0);
                                            }
                                          }

                                          return ListView.separated(
                                            scrollDirection: Axis.vertical,
                                            itemCount: data.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (builder) =>
                                                              Detailed_Page(
                                                                fecilityModel:
                                                                    data[index],
                                                              )));
                                                },
                                                child: Container(
                                                  width: 300.w,
                                                  color:
                                                      const Color(0xffffffff),
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
                                                                data[index]
                                                                            .images!
                                                                            .length >
                                                                        itemIndex
                                                                    ? Container(
                                                                        child: Image
                                                                            .network(
                                                                          data[index]
                                                                              .images![itemIndex]
                                                                              .toString(),
                                                                          width:
                                                                              356.w,
                                                                          height:
                                                                              182.h,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      )
                                                                    : const SizedBox(),
                                                            options:
                                                                CarouselOptions(
                                                              onPageChanged:
                                                                  (i, reason) {
                                                                setState(() {
                                                                  _currentIndex[
                                                                      index] = i;
                                                                });
                                                              },
                                                              height: 182.h,
                                                              viewportFraction:
                                                                  1,
                                                              initialPage: 0,
                                                              enableInfiniteScroll:
                                                                  true,
                                                              reverse: false,
                                                              autoPlay: false,
                                                              autoPlayInterval:
                                                                  const Duration(
                                                                      seconds:
                                                                          3),
                                                              autoPlayAnimationDuration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          800),
                                                              autoPlayCurve: Curves
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
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 170.h),
                                                            child: Center(
                                                              child:
                                                                  AnimatedSmoothIndicator(
                                                                activeIndex:
                                                                    _currentIndex[
                                                                        index],
                                                                count:
                                                                    data[index]
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
                                                                        Colors
                                                                            .white),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5.h),
                                                        child: Row(
                                                          children: [
                                                            Center(
                                                              child: SizedBox(
                                                                width: 230.w,
                                                                child: Text(
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  data[index]
                                                                      .facilityName
                                                                      .toString(),
                                                                  style:
                                                                      TextStyle(
                                                                    color: const Color(
                                                                        0xff191919),
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
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
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            Text(
                                                              '${150}m',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff191919),
                                                                fontSize: 12.sp,
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
                                                          const Icon(
                                                            Icons.star,
                                                            color: Colors.black,
                                                          ),
                                                          Text(
                                                            '${4.3} ',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xff191919),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  'Montserrat',
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 85.w,
                                                            child: Text(
                                                              '(${data[index].review!.length} Reviews)',
                                                              style: TextStyle(
                                                                color: const Color(
                                                                    0xffa2a2a2),
                                                                fontSize: 12.sp,
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
                                                              physics:
                                                                  ScrollPhysics(
                                                                      parent:
                                                                          NeverScrollableScrollPhysics()),
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              shrinkWrap: false,
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
                                                                    width: 24.w,
                                                                    height:
                                                                        24.h,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                            color:
                                                                                Color(0xfff0f0f0)),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Center(
                                                                          child:
                                                                              Image.network(
                                                                            data[index].amenities![position].iconUrl!.toString(),
                                                                            width:
                                                                                19.w,
                                                                            height:
                                                                                19.h,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                } else if (position ==
                                                                    4) {
                                                                  int balance =
                                                                      data[index]
                                                                              .amenities!
                                                                              .length -
                                                                          4;
                                                                  return Container(
                                                                    width: 24.w,
                                                                    height:
                                                                        24.h,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                            color:
                                                                                Color(0xfff0f0f0)),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Text("+${balance}")),
                                                                      ],
                                                                    ),
                                                                  );
                                                                } else {
                                                                  return SizedBox();
                                                                }
                                                              },
                                                              separatorBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      int index) {
                                                                return SizedBox(
                                                                  width: 8.w,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),

                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context,
                                                    int index) {
                                              return SizedBox(
                                                width: 14.w,
                                              );
                                            },
                                          );
                                        } else {
                                          return const SizedBox();
                                        }
                                      }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (builder) => Detailed_Page()));
                            },
                            child: const Icon(Icons.ac_unit_outlined))
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [Text('Can Take Next Time ')],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
