

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



bool _visible = false;

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Event & Sessions',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20.sp,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        Text('Kalamassery, Kochi ',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 12.sp,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600)),
                        Text('(6 km around)',
                            style: TextStyle(
                                color:Theme.of(context).colorScheme.onSecondary,
                                fontSize: 12.sp,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('Change',
                            style: TextStyle(
                                color: const Color(0xff1e90ff),
                                fontSize: 12.sp,
                                decoration: TextDecoration.underline,
                                decorationColor: const Color(0xff1e90ff),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),

                  ///-----------Search Container  -------------------///

                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                     width: 345.w,
                    height: 40.h,
                    decoration: BoxDecoration(


                      border: Border.all(
                          color: _visible==true?Colors.black
                              : Colors.grey,
                          width: 1.w,
                          style: BorderStyle.solid)


                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Icon(Icons.search_outlined,
                              size: 28.sp, color: const Color(0xffb7b7b7)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: SizedBox(
                            width: 273.w,
                            child: TextFormField(
                              style:TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Event, venue, organizer, session..',
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xffb7b7b7),
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


                          },
                          // _visible==true?
                          child: Container(
                            width: 42.w,
                            // height: 40,
                            //  color: Color(0xfff0f0f0),
                            color: _visible==true?const Color(0xff191919):
                            const Color(0xfff0f0f0),
                            child: Center(
                                child: Image.asset(
                              'assets/icons/calender.png',
                              width: 24.w,
                              // height: 24.h,
                                  color: _visible==true?const Color(0xfff0f0f0):
                                  const Color(0xff191919),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),

                  _visible==true?  SizedBox(

                    height: 150.h,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 10.h),
                      child:Container(

                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 0,
                                spreadRadius: 0)
                          ]),
                          // child: CalendarWeek(
                          //   backgroundColor: Colors.black,
                          //   // controller: _controller,
                          //   height: 100,
                          //
                          //   showMonth: true,
                          //   minDate: DateTime.now().add(
                          //     Duration(days: -365),
                          //   ),
                          //   maxDate: DateTime.now().add(
                          //     Duration(days: 365),
                          //   ),
                          //   onDatePressed: (DateTime datetime) {
                          //     // Do something
                          //     setState(() {});
                          //   },
                          //   onDateLongPressed: (DateTime datetime) {
                          //     // Do something
                          //   },
                          //   onWeekChanged: () {
                          //     // Do something
                          //   },
                          //   monthViewBuilder: (DateTime time) => Align(
                          //     alignment: FractionalOffset.center,
                          //     child: Container(
                          //         margin: const EdgeInsets.symmetric(vertical: 4),
                          //         // child: Text(
                          //         //   DateFormat.yMMMM().format(time),
                          //         //   overflow: TextOverflow.ellipsis,
                          //         //   textAlign: TextAlign.center,
                          //         //   style: TextStyle(
                          //         //       color: Colors.blue, fontWeight: FontWeight.w600),
                          //         // )
                          //       ),
                          //   ),
                          //
                          // )
                      ),
                  )):const SizedBox(),
                ],
              ),
            ),
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
                          children: [SizedBox(
                            width: 60.w,
                            height: 42.h,
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.5),
                                    child: GestureDetector(
                                      onTap: () {
                                        // Navigator.of(context).push(MaterialPageRoute(
                                        //     builder: (builder) => sample()));
                                      },
                                      child: Container(
                                      width: 40.w,
                                      height: 28,
                                      color: const Color(0xffb7b7b7),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          'assets/icons/filter.png',

                                          height: 20.h,
                                          color: const Color(0xff191919),
                                        ),
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
                                backgroundColor:const Color(0xff00ff00),
                                child:    Text('${4}',
                                    style: TextStyle(
                                        color: const Color(0xff191919),
                                        fontSize: 8.sp,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400)),),
                            )


                        ]),
                        TabBar(
                          indicator: const BoxDecoration(
                               // Creates border
                            color: const Color(0xff191919),),
                          tabAlignment: TabAlignment.start,

                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,

                          isScrollable: true,
                          tabs: [
                            Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Tab(child: Text('All(${38})',style: TextStyle(),))),
                            Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Tab(
                                    child: Text(
                                  'Event(${21})',
                                  style: TextStyle(

                                  ),
                                ))),
                            Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Tab(
                                    child: Text(
                                  'Class(${14})',
                                  style: TextStyle(

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
                    child: Padding(
                      padding:  EdgeInsets.only(left: 20.w),
                      child: Column(
                        children: [
                          ///-----------1st Container  -------------------///
                          Container(
                            width: 393.w,
                            height: 248.h,
                            decoration: const BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: 20.w),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text(
                                            'Events happening nearby you',
                                            style: TextStyle(
                                                color: const Color(0xff191919),
                                                fontSize: 16.sp,
                                                fontWeight:
                                                    FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat')),
                                      ),
                                      SizedBox(
                                        width: 83.w,
                                      ),
                                      const Icon(

                                        Icons.arrow_forward_ios_outlined,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
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
                                          decoration: const BoxDecoration(

                                              color: Color(0xffffffff)),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                  color: const Color(
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
                                                    color: const Color(0x6B000000),
                                                    child: Center(
                                                      child: Text('Business',
                                                          style: TextStyle(
                                                              color: const Color(
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
                              ],
                            ),
                          ),

                          ///-----------2nd Container  -------------------///
                          Container(
                            width: 393.w,
                            height: 380.h,
                            decoration: const BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: 20.w),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text('Book a class',
                                            style: TextStyle(
                                                color: const Color(0xff191919),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat')),
                                      ),
                                      SizedBox(
                                        width: 231.w,
                                      ),
                                      const Icon(

                                        Icons.arrow_forward_ios_outlined,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
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
                                              color: const Color(0xffffffff)),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                  color: const Color(
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
                                                    color: const Color(0xFF191919),
                                                    child: Center(
                                                      child: Text('Regular',
                                                          style: TextStyle(
                                                              color: const Color(
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
                              ],
                            ),
                          ),



                          ///-----------3rd Container  -------------------///
                          Container(
                            width: 375.w,
                            height: 207.h,
                            decoration: const BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: 20.w),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text(
                                            'Organizers',
                                            style: TextStyle(
                                                color: const Color(0xff191919),
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
                                SizedBox(
                                  height: 15.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 140.h,
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
                                                          color: const Color(0xff191919),
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
                            decoration: const BoxDecoration(color: Color(0xffffffff)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(right: 20.w),
                                      child: Row(
                                        children: [
                                          Center(
                                            child: Text(
                                                'Challenges',
                                                style: TextStyle(
                                                    color: const Color(0xff191919),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontFamily:
                                                    'Montserrat')),
                                          ),
                                          SizedBox(
                                            width: 242.w,
                                          ),
                                          const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),

                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (builder) => Page1()));
                                  },
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
                                              color: const Color(0xffffffff)),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                  color: const Color(
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
                                                    color: const Color(0x6B000000),
                                                    child: Center(
                                                      child: Text('Business',
                                                          style: TextStyle(
                                                              color: const Color(
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
                              ],
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: const Column(
                      children: [
                        Text('dbkhhbhbhklbouhbouibbpbpbpobpb-pbpubata')
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: const Column(
                      children: [
                        Text('dbkhhbhbhklbouhbouibbpbpbpobpb-pbpubata')
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

}

