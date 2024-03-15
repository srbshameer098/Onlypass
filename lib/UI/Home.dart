import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlypass/Repository/ModelClass/FecilitiesModel.dart';
import 'package:onlypass/bloc/Fecilities/fecilities_bloc.dart';

import 'Page1.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
late FecilitiesModel data;
class _HomeState extends State<Home> {
  @override
  void initState() {

    BlocProvider.of<FecilitiesBloc>(context).add(FetchFecilities());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Event & Sessions',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only( top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///-----------Google Map  -------------------///










              ///-----------Head Line  -------------------///


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                    'Find facilities near you',
                    style: TextStyle(
                        color: Color(0xff191919),
                        fontSize: 16.sp,
                        fontWeight:
                        FontWeight.w600,
                        fontFamily:
                        'Montserrat')),
              ),

              ///-----------Tab Bar  -------------------///

              Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.w,horizontal: 25.w),
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

                            decoration: BoxDecoration(color: Color(0xffffffff)),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 18.w),
                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 393.h,
                                      height: 550.h,
                                      child: BlocBuilder<FecilitiesBloc, FecilitiesState>(
  builder: (context, state) {
    if (state is FecilitiesblocLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (state is FecilitiesblocError) {
      return Center(
        child: Text("ERROR"),
      );
    }
    if (state is FecilitiesblocLoaded) {
      data = BlocProvider
          .of<FecilitiesBloc>(context)
          .fecilitiesModel;
      return ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: 8,
        itemBuilder:
            (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder) => Page1()));
            },
            child: Container(
              width: 300.w,

              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(0),
                  color: Color(0xffffffff)),
              child: Column(
                children: [
                  Image.network(
                   data.images.toString(),
                    width: 348.w,
                    height: 232.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                              data.facilityName.toString(),
                              style: TextStyle(
                                  color: Color(0xff191919),
                                  fontSize: 16.sp,
                                  fontWeight:
                                  FontWeight.w600,
                                  fontFamily:
                                  'Montserrat')),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          size: 14.sp,
                          color: Colors.grey,
                        ), Text(
                            '${150}m',
                            style: TextStyle(
                                color: Color(0xff191919),
                                fontSize: 12.sp,
                                fontWeight:
                                FontWeight.w600,
                                fontFamily:
                                'Montserrat')),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.black,),
                      Text(
                          '${4.3} ',
                          style: TextStyle(
                              color: Color(0xff191919),
                              fontSize: 14.sp,
                              fontWeight:
                              FontWeight.w600,
                              fontFamily:
                              'Montserrat')),
                      Text(
                          '(${174} Reviews)',
                          style: TextStyle(
                              color: Color(
                                  0xffa2a2a2),
                              fontSize: 12.sp,
                              fontWeight:
                              FontWeight.w400,
                              fontFamily:
                              'Montserrat')),
                      SizedBox(
                        width: 50.w,
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 24.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder:
                              (BuildContext context, int index) {
                            return Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(

                                  color: Color(
                                      0xfff0f0f0)),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/image/event_img_1.png',
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                  ),


                                ],
                              ),
                            );
                          },
                          separatorBuilder:
                              (BuildContext context, int index) {
                            return SizedBox(
                              width: 8.w,
                            );
                          },
                        ),


                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder:
            (BuildContext context, int index) {
          return SizedBox(
            width: 14.w,
          );
        },
      );
    }else {
      return SizedBox();
    }
    ;
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
                        Text('dbkhhbhbhklbouhbouibbpbpbpobpb-pbpubata')
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
    );
  }
}
