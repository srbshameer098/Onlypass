import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title:Text('Event & Sessions',style: TextStyle(color: Colors.white,fontSize: 16),) ,
            actions: [Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(Icons.notifications_none,color: Colors.white,),
            )],
          ),
        body: Padding(
          padding:  EdgeInsets.only(left: 20.w,top: 15.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 20.sp,),
                  Text('Kalamassery, Kochi ',
                      style:TextStyle(
                          color: Color(0xff191919),
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                  Text('(6 km around)',
                      style:TextStyle(
                          color: Color(0xff191919),
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                  SizedBox(width: 5.w,),
                  Text('Change',
                      style:TextStyle(
                          color: Color(0xff1e90ff),
                          fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff1e90ff),
                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                ],
              ),

              ///-----------Search Container  -------------------///


              SizedBox(height: 5.h,),
              Container(

                // width: 320.w,
                height: 40.h,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 1.w,
                      style: BorderStyle.solid), //Border.all
                ),

                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(top: 8.h),
                      child: Icon(Icons.search_outlined,size: 28.sp,color: Color(0xffb7b7b7)),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 15.0),
                      child: SizedBox(width: 300.w,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,),

                            hintText: 'Event, venue, organizer, session..',
                            hintStyle: TextStyle(fontSize: 14.sp,color: Color(0xffb7b7b7),)
                          ),
                          onSaved: (String? value) {

                          },

                        ),
                      ),
                    ),
                    Container(
                      width: 42.w,
                      // height: 40,
                      color: Color(0xfff0f0f0),
                      child: Center(child: Image.asset('assets/icons/calender.png',
                      width: 24.w,
                        // height: 24.h,
                        color: Color(0xff191919),
                      )),
                    )
                  ],
                ),
              ),
              // SizedBox(width: 20.w,),

              ///-----------Tab Bar  -------------------///



              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Container(
                        width: 44.w,
                        height: 28,
                        color: Color(0xffb7b7b7),
                        child: Center(
                          child: Image.asset('assets/icons/filter.png',
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
                                    'Event(${21})',
                                    style: TextStyle(color: Colors.black,),
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
                                    style: TextStyle(color: Colors.black,),
                                  ))),
                        ],
                                           ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 375.w,
                        height: 298.h,
                        decoration: BoxDecoration(

                            color: Color(0xffffffff)),
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
                                          child:  Text('Events happening nearby you',
                                              style:TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Montserrat')),
                                        ),

                                        SizedBox(width: 60.w,),
                                       Icon(Icons.arrow_forward_ios_outlined,size: 14,)


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
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 300.w,
                                        height: 174.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),

                                            color: Color(0xffffffff)),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [Image.asset(
                                                'assets/image/event_img_1.png',
                                                width:274.w,
                                                height: 174.h,
                                              ),

                                                Positioned(
                                                  left: 15.w,
                                                  top: 105.h,
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(width: 200.w,

                                                        child: Text('Scale your business with digital marketing',
                                                            style:TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 16.sp,
                                                                fontWeight: FontWeight.w600,
                                                                fontFamily: 'Montserrat')),
                                                      ),

                                                      Row(
                                                        children: [
                                                          Icon(Icons.location_on_outlined,size: 18.sp,),
                                                          Text('Kalamassery, Kochi ',
                                                              style:TextStyle(
                                                                  color: Color(
                                                                      0xffffffff),
                                                                  fontSize: 10.sp,
                                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                                                        ],
                                                      ),
                                                    ],
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


                      Container(
                        width: 375.w,
                        height: 298.h,
                        decoration: BoxDecoration(

                            color: Color(0xffffffff)),
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
                                          child:  Text('Events happening nearby you',
                                              style:TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Montserrat')),
                                        ),

                                        SizedBox(width: 60.w,),
                                        Icon(Icons.arrow_forward_ios_outlined,size: 14,)


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
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 300.w,
                                        height: 174.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),

                                            color: Color(0xffffffff)),
                                        child: Column(
                                          children: [
                                            Stack(
                                                children: [Image.asset(
                                                  'assets/image/event_img_1.png',
                                                  width:274.w,
                                                  height: 174.h,
                                                ),

                                                  Positioned(
                                                    left: 15.w,
                                                    top: 105.h,
                                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(width: 200.w,

                                                          child: Text('Scale your business with digital marketing',
                                                              style:TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 16.sp,
                                                                  fontWeight: FontWeight.w600,
                                                                  fontFamily: 'Montserrat')),
                                                        ),

                                                        Row(
                                                          children: [
                                                            Icon(Icons.location_on_outlined,size: 18.sp,),
                                                            Text('Kalamassery, Kochi ',
                                                                style:TextStyle(
                                                                    color: Color(
                                                                        0xffffffff),
                                                                    fontSize: 10.sp,
                                                                    fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                                                          ],
                                                        ),
                                                      ],
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
