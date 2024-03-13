import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

bool _visible = false;

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(resizeToAvoidBottomInset: false,
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
          padding: EdgeInsets.only(left: 20.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20.sp,
                  ),
                  Text('Kalamassery, Kochi ',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600)),
                  Text('(6 km around)',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Change',
                      style: TextStyle(
                          color: Color(0xff1e90ff),
                          fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff1e90ff),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400)),
                ],
              ),

              ///-----------Search Container  -------------------///

              SizedBox(
                height: 5.h,
              ),
              Container(
                // width: 320.w,
                height: 40.h,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 1.w,
                      style: BorderStyle.solid), //Border.all
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
                      padding: EdgeInsets.only(top: 15.0),
                      child: SizedBox(
                        width: 300.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Event, venue, organizer, session..',
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xffb7b7b7),
                              )),
                          onSaved: (String? value) {},
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _visible = !_visible;
                        });
                        calendarController.clearSelectedDates();
                        // showDatePicker(
                        //
                        //   context: context,
                        //   initialDate: DateTime.now(),
                        //   firstDate: DateTime(2023, 01, 01),
                        //   lastDate: DateTime(2025, 12, 31),
                        // );
                      },
                      // _visible==true?
                      child: Container(
                        width: 42.w,
                        // height: 40,
                        color: Color(0xfff0f0f0),
                        child: Center(
                            child: Image.asset(
                          'assets/icons/calender.png',
                          width: 24.w,
                          // height: 24.h,
                          color: Color(0xff191919),
                        )),
                      ),
                    )
                  ],
                ),
              ),

              _visible==true?  SizedBox(
                width: 345.w,
                height: 360.h,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    child: ScrollableCleanCalendar(
                      monthTextStyle:TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500 ),
                       weekdayTextStyle:TextStyle(color:Color(0xff5c5c5c),fontSize: 14.sp,fontWeight: FontWeight.w500),
                      dayTextStyle:TextStyle(color:Color(0xfffefefe),fontSize: 14.sp,fontWeight: FontWeight.w400),
                      calendarController: calendarController,
                      layout: Layout.DEFAULT,

                        dayDisableColor:Color(0xfdffffff),
                        dayBackgroundColor:Color(0xfd000000),
                        dayDisableBackgroundColor:Color(0xfd000000),
                      daySelectedBackgroundColor:Color(0xffffffff),
                      calendarCrossAxisSpacing: 0,
                    ),
                  ),
                ),
              ):SizedBox(),
              // SizedBox(width: 20.w,),

              ///-----------Tab Bar  -------------------///

              Stack(
                children: [
                  Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            children: [Container(
                              width: 60.w,
                              height: 40.h,
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.5),
                                      child: Container(
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
                                    ),
                                  ),
                                ],
                              ),
                            ),


                              Positioned(
                                left: 40.w,
                                bottom: 25.h,
                                child: CircleAvatar(radius: 8.r,
                                  backgroundColor:Color(0xff00ff00),
                                  child:    Text('${4}',
                                      style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 8.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),),
                              )


                          ]),
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
                                    'Event(${21})',
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
                                    'Class(${14})',
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
                            height: 298.h,
                            decoration: BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text(
                                            'Events happening nearby you',
                                            style: TextStyle(
                                                color: Color(0xff191919),
                                                fontSize: 16.sp,
                                                fontWeight:
                                                    FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat')),
                                      ),
                                      SizedBox(
                                        width: 85.w,
                                      ),
                                      Icon(
                                        textDirection:TextDirection.ltr,
                                        Icons.arrow_forward_ios_outlined,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 174.h,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            width: 300.w,
                                            height: 174.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                color: Color(0xffffffff)),
                                            child: Column(
                                              children: [
                                                Stack(children: [
                                                  Image.asset(
                                                    'assets/image/event_img_1.png',
                                                    width: 274.w,
                                                    height: 174.h,
                                                  ),
                                                  Positioned(
                                                    left: 15.w,
                                                    top: 105.h,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 200.w,
                                                          child: Text(
                                                              'Scale your business with digital marketing',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      'Montserrat')),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .location_on_outlined,
                                                              size: 18.sp,
                                                            ),
                                                            Text(
                                                                'Kalamassery, Kochi ',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xffffffff),
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Positioned(
                                                    left: 0.w,
                                                    bottom: 140.h,
                                                    child: Container(
                                                      width: 61.w,
                                                      height: 20.h,
                                                      color: Color(0x6B000000),
                                                      child: Center(
                                                        child: Text('Business',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xfffefefe),
                                                                fontSize: 10.sp,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w400)),
                                                      ),
                                                    ),
                                                  )

                                                ]),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 14.w,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///-----------2nd Container  -------------------///
                          Container(
                            width: 393.w,
                            height: 380.h,
                            decoration: BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text('Book a class',
                                            style: TextStyle(
                                                color: Color(0xff191919),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat')),
                                      ),
                                      SizedBox(
                                        width: 234.w,
                                      ),
                                      Icon(

                                        Icons.arrow_forward_ios_outlined,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 320.h,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            width: 300.w,
                                            height: 320.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                color: Color(0xffffffff)),
                                            child: Column(
                                              children: [
                                                Stack(children: [
                                                  Image.asset(
                                                    'assets/image/hero_speed 1.png',
                                                    width: 274.w,
                                                    height: 320.h,
                                                  ),
                                                  Positioned(
                                                    left: 15.w,
                                                    top: 268.h,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 200.w,
                                                          child: Text(
                                                              'Core strength booster',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      'Montserrat')),
                                                        ),
                                                        Row(
                                                          children: [

                                                            Text(
                                                                'Beginner - Nidhi Mohan',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xffffffff),
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),



                                                  Positioned(
                                                    right: 0.w,
                                                    bottom: 280.h,
                                                    child: Container(
                                                      width: 61.w,
                                                      height: 20.h,
                                                      color: Color(0xFF191919),
                                                      child: Center(
                                                        child: Text('Regular',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xfffefefe),
                                                                fontSize: 10.sp,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w400)),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 14.w,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),



                          ///-----------3rd Container  -------------------///
                          Container(
                            width: 375.w,
                            height: 207.h,
                            decoration: BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Center(
                                          child: Text(
                                              'Organizers',
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
                                        // Icon(
                                        //   Icons.arrow_forward_ios_outlined,
                                        //   size: 14,
                                        // )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 130.h,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 6,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Column(crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                radius: 30.r,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(30.r),
                                                child: Image.asset(
                                                  'assets/image/Ellipse 51.png',
                                                  width: 72.w,
                                                  height: 72.h,
                                                ),
                                              ),

                                              ),
                                              SizedBox(width:120.w,
                                                child: Center(
                                                  child: Text(
                                                    textAlign: TextAlign.center,
                                                      'Rootsys Technologies school',
                                                      style: TextStyle(
                                                          color: Color(0xff191919),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          fontFamily:
                                                          'Montserrat')),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 14.w,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),







                          ///-----------4th Container  -------------------///
                          Container(
                            width: 375.w,
                            height: 298.h,
                            decoration: BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Center(
                                              child: Text(
                                                  'Challenges',
                                                  style: TextStyle(
                                                      color: Color(0xff191919),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontFamily:
                                                      'Montserrat')),
                                            ),
                                            SizedBox(
                                              width: 227.w,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 14,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 174.h,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            width: 300.w,
                                            height: 174.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Color(0xffffffff)),
                                            child: Column(
                                              children: [
                                                Stack(children: [
                                                  Image.asset(
                                                    'assets/image/event_img_2.png',
                                                    width: 274.w,
                                                    height: 174.h,
                                                  ),
                                                  Positioned(
                                                    left: 15.w,
                                                    top: 105.h,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 200.w,
                                                          child: Text(
                                                              'Scale your business with digital marketing',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                  16.sp,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  fontFamily:
                                                                  'Montserrat')),
                                                        ),
                                                        Row(
                                                          children: [

                                                            Text(
                                                                'Flex Yoga - Subash Park Kaloor',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xffffffff),
                                                                    fontSize:
                                                                    12.sp,
                                                                    fontFamily:
                                                                    'Montserrat',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Positioned(
                                                    left: 0.w,
                                                    bottom: 140.h,
                                                    child: Container(
                                                      width: 61.w,
                                                      height: 20.h,
                                                      color: Color(0x6B000000),
                                                      child: Center(
                                                        child: Text('Business',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xfffefefe),
                                                                fontSize: 10.sp,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w400)),
                                                      ),
                                                    ),
                                                  )

                                                ]),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return SizedBox(
                                            width: 14.w,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
