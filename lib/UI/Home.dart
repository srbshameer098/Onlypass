import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:onlypass/UI/Bottomnav.dart';


import 'package:onlypass/bloc/Fecilities/fecilities_bloc.dart';

import '../Repository/ModelClass/FacilityModel.dart';
import 'Detailed_Page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

late List<FacilityModel> data;

class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<FecilitiesBloc>(context).add(FetchFecilities());
    // TODO: implement initState
    super.initState();
  }
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///-----------Google Map  -------------------///

                ///-----------Head Line  -------------------///

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text('Find facilities near you',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat')),
                ),

                ///-----------Tab Bar  -------------------///

                Stack(children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.w, horizontal: 25.w),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 44.w,
                              height: 28,
                              color: Color(0xffb7b7b7),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/filter.png',
                                  width: 24.w,
                                  height: 24.h,
                                  color: Color(0xff191919),
                                ),
                              ),
                            ),
                            TabBar(
                              tabAlignment: TabAlignment.start,
                              indicatorColor: Colors.transparent,
                              labelColor: Colors.white,
                              isScrollable: true,
                              tabs: [
                                Container(
                                    width: 80.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xFD000000),
                                    ),
                                    child: Tab(child: Text('All(${38})'))),
                                Container(
                                    width: 80.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAEAEA),
                                    ),
                                    child: Tab(
                                        child: Text(
                                      'Gym(${21})',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ))),
                                Container(
                                    width: 80.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAEAEA),
                                    ),
                                    child: Tab(
                                        child: Text(
                                      'Pool(${14})',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
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
                                  BoxDecoration(color: Color(0xffffffff)),
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
                                              child:
                                                  CircularProgressIndicator(),
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
                                                    height:
                                                        MediaQuery.of(context)
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
                                            return ListView.separated(
                                              scrollDirection: Axis.vertical,
                                              itemCount: data.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (builder) =>
                                                                Detailed_Page()));
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    color: Color(0xffffffff),
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
                                                                          child:
                                                                              Image.network(
                                                                            data[index].images![itemIndex].toString(),
                                                                            width:
                                                                                356.w,
                                                                            height:
                                                                                182.h,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        )
                                                                      : SizedBox(),
                                                              options:
                                                                  CarouselOptions(
                                                                    onPageChanged:  (index, reason) {
                                                    setState(() {
                                                    _current = index;
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
                                                                    Duration(
                                                                        seconds:
                                                                            3),
                                                                autoPlayAnimationDuration:
                                                                    Duration(
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
                                                                // onPageChanged:
                                                                //     (index,
                                                                //         reason) {
                                                                //   setState(() {
                                                                //     currentIndex =
                                                                //         index;
                                                                //   });
                                                                // },
                                                              ),
                                                              itemCount:
                                                                  data[index]
                                                                      .images!
                                                                      .length,
                                                            ),
                                                            LinearProgressBar(
                                                              maxSteps:  data[index]
                                                                  .images!
                                                                  .length,
                                                              progressType: LinearProgressBar.progressTypeDots, // Use Dots progress
                                                              currentStep: _current,
                                                              progressColor: Colors.red,
                                                              backgroundColor: Colors.grey,
                                                            )
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
                                                                child: SizedBox(
                                                                  width: 230.w,
                                                                  child: Text(
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      data[index]
                                                                          .facilityName
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff191919),
                                                                          fontSize: 16
                                                                              .sp,
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontFamily:
                                                                              'Montserrat')),
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
                                                              Text('${150}m',
                                                                  style: TextStyle(
                                                                      color: Color(
                                                                          0xff191919),
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontFamily:
                                                                          'Montserrat')),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            Text('${4.3} ',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff191919),
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        'Montserrat')),
                                                            SizedBox(
                                                              width: 85.w,
                                                              child: Text(
                                                                  '(${data[index].review!.length} Reviews)',
                                                                  style: TextStyle(
                                                                      color: Color(
                                                                          0xffa2a2a2),
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      fontFamily:
                                                                          'Montserrat')),
                                                            ),
                                                            SizedBox(
                                                              width: 50.w,
                                                            ),
                                                            SizedBox(
                                                              width: 150.w,
                                                              height: 24.h,
                                                              child: ListView
                                                                  .separated(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                itemCount: 5,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                            context,
                                                                        int index) {
                                                                  return Container(
                                                                    width: 24.w,
                                                                    height:
                                                                        24.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                Color(0xfff0f0f0)),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Center(
                                                                          // child: Image
                                                                          //     .network(
                                                                          // ' data[index].amenities![index].iconUrl.toString(),',
                                                                          //   width:
                                                                          //       20.w,
                                                                          //   height:
                                                                          //       20.h,
                                                                          // ),

                                                                          child:
                                                                              Icon(
                                                                            Icons.wifi,
                                                                            size:
                                                                                19.sp,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
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
                                                            )
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
                                            return SizedBox();
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (builder) => Detailed_Page()));
                              },
                              child: Icon(Icons.ac_unit_outlined))
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('dbkhhbhbhklbouhbouibbpbpbpobpb-pbpubata')
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
