import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
class Detailed_Page extends StatefulWidget {
  const Detailed_Page({super.key});

  @override
  State<Detailed_Page> createState() => _Detailed_PageState();
}

class _Detailed_PageState extends State<Detailed_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 393.w,
                height: 240.h,
                child: Stack(
                  children: [
                    Image.asset('assets/image/Image1 1.png',
                    fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
          
              Padding(
                padding:  EdgeInsets.only(left: 25.w,right: 10.w),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(top: 24.h),
                      child: Row(
                        children: [
                          Center(
                            child: SizedBox(width: 224.w,
                              child: Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  'Hulk Fit',
                                  style: TextStyle(
                                      color: Color(
                                          0xff191919),
                                      fontSize:
                                      16.sp,
                                      fontWeight:
                                      FontWeight
                                          .w600,
                                      fontFamily:
                                      'Montserrat')),
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
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
                          SizedBox(width: 40.w,
                            child: Text(
                                '(${240})',
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
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 14.h),
                      child: Row(
                        children: [
                          Container(
          
                            height: 24,
                              color: Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/gym.png',
                                    width: 20.30,
                                    height: 11.41,
                                  ),
                                  Text(
                                      'GYM',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w500,
                                          fontFamily:
                                          'Montserrat')),
                                ],
                              ),
                            ),
                          ),
                      SizedBox(width: 5.w,),
                          Container(
          
                            height: 24,
                            color: Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/pool.png',
                                    width: 20.30,
                                    height: 11.41,
                                  ),
                                  Text(
                                      'Pool',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w500,
                                          fontFamily:
                                          'Montserrat')),
                                ],
                              ),
                            ),
                          ),
          
          
                      SizedBox(width: 70.w,),
          
          
          
                          Container(
          
                            height: 24,
                            color: Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 6.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.male,size: 16.sp,),
                                  Text(
                                      'Male',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w500,
                                          fontFamily:
                                          'Montserrat')),
          
          
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
          
                            height: 24,
                            color: Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.female,size: 16.sp,),
                                  Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w500,
                                          fontFamily:
                                          'Montserrat')),
          
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
          
          
          
                    Padding(
                      padding:  EdgeInsets.only(top: 29.h),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined,size: 16.sp,
                            color:Color(0xffb7b7b7) ,),
          
                          SizedBox(width: 9.w,),
          
                          SizedBox(width: 200.w,
                            child: Text(
                                '3rd Floor, BA Tower Eloor Junction, Kalamassery',
                                style: TextStyle(
                                    color: Color(
                                        0xff191919),
                                    fontSize:
                                    14.sp,
                                    fontWeight:
                                    FontWeight
                                        .w500,
                                    fontFamily:
                                    'Montserrat')),
                          ),
          
                          SizedBox(width: 43.w,),
          
          
                          Text(
                              'Get direction',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff1e90ff),
                                  color: Color(0xff1e90ff),
                                  fontSize:
                                  12.sp,
                                  fontWeight:
                                  FontWeight
                                      .w400,
                                  fontFamily:
                                  'Montserrat')),
          
          
                        ],
                      ),
                    ),
          
          
          
                    Padding(
                      padding:  EdgeInsets.only(top: 24.h),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.access_time_outlined,size: 16.sp,
                            color:Color(0xffb7b7b7) ,),
          
                          SizedBox(width: 8.54.w,),
          
                          Text(
                              'Open now ',
                              style: TextStyle(
          
                                  color: Color(0xff36fa00),
                                  fontSize:
                                  14.sp,
                                  fontWeight:
                                  FontWeight
                                      .w500,
                                  fontFamily:
                                  'Montserrat')),
          
                          Text(
                              '- until 11pm',
                              style: TextStyle(
                                  color: Color(
                                      0xff191919),
                                  fontSize:
                                  14.sp,
                                  fontWeight:
                                  FontWeight
                                      .w500,
                                  fontFamily:
                                  'Montserrat')),
          
                          SizedBox(width: 73.w,),
          
          
                          Text(
                              'Opening hours',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff1e90ff),
                                  color: Color(0xff1e90ff),
                                  fontSize:
                                  12.sp,
                                  fontWeight:
                                  FontWeight
                                      .w400,
                                  fontFamily:
                                  'Montserrat')),
          
          
                        ],
                      ),
                    ),
          
          
                    Padding(
                      padding:  EdgeInsets.only(top: 40.h),
                      child: Text(
                          'About',
                          style: TextStyle(
                              color: Color(
                                  0xff000000),
                              fontSize:
                              14.sp,
                              fontWeight:
                              FontWeight
                                  .w600,
                              fontFamily:
                              'Montserrat')),
                    ),
          
                    SizedBox(width: 351.w,
                      child: Padding(
                        padding:  EdgeInsets.only(top: 16.h),
                        child: Text(
                            'Situated in the heart of emerging Kochi, ideal place to get fit. The large open space and friendly staff make visiting here a pleasure and it’s a great place to unwind.',
                            style: TextStyle(
                                color: Color(
                                    0xffb7b7b7),
                                fontSize:
                                14.sp,
                                fontWeight:
                                FontWeight
                                    .w500,
                                fontFamily:
                                'Montserrat')),
                      ),
                    ),
          
          
                    Padding(
                      padding:  EdgeInsets.only(top: 24.h),
                      child: Row(
                        children: [
                          Container(
          
                            width: 91.w,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade900),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 6.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.bookmarks_outlined,size: 16.sp,),
                                  SizedBox(width: 8.w,),
                                  Text(
                                      'Save',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontFamily:
                                          'Montserrat')),
          
          
                                ],
                              ),
                            ),
                          ),
          
          
                          SizedBox(width: 13.w,),
          
                          Container(
          
                            width: 91.w,
                            height: 32,
                            decoration: BoxDecoration(
                               border: Border.all(width: 1.w, color: Colors.grey.shade900),
                               color: Color(0xFFFFFFFF),
                            ),
          
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 6.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.share_outlined,size: 16.sp,),
                                  SizedBox(width: 8.w,),
                                  Text(
                                      'share',
                                      style: TextStyle(
                                          color: Color(
                                              0xff191919),
                                          fontSize:
                                          12.sp,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontFamily:
                                          'Montserrat')),
          
          
          
          
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
          
                         Padding(
                          padding:  EdgeInsets.only(top: 40.h),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
          
          
          
                              Text(
                                  'Facilities and amenities',
                                  style: TextStyle(
                                      color: Color(
                                          0xff000000),
                                      fontSize:
                                      14.sp,
                                      fontWeight:
                                      FontWeight
                                          .w600,
                                      fontFamily:
                                      'Montserrat')),
                              SizedBox(width: 83.w,),
                              Text(
                                  'Equipment list',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xff1e90ff),
                                      color: Color(0xff1e90ff),
                                      fontSize:
                                      12.sp,
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontFamily:
                                      'Montserrat')),
          
          
                            ],
                          ),
                         ),
          
          
                    SizedBox(height: 250.h,
                      child: GridView.builder(
                        physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,

                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 200/50,
                          ),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                // border: Border.all(width: 1, color: Colors.grey.shade900),  color: Colors.amber,
                              ),


                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width:24.w,
                                      height: 24.h,
                                      color: Color(0xfff0f0f0),
                                      child: Padding(
                                        padding:  EdgeInsets.only(left:2.w,right: 2.w,top: 2.h,bottom: 2.h),
                                        child: Icon(Icons.wifi,size: 14.sp,),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 8.w),
                                      child: Text('Air Condition',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff191919),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),

                    Text('Opening hours',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
          
          Padding(
            padding:  EdgeInsets.only(top: 26.h),
            child: Row(
              children: [
                Text('Days',
                  style: TextStyle(
                    color: Color(0xffb7b7b7),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 74.w,),
                Text('Morning',
                  style: TextStyle(
                    color: Color(0xffb7b7b7),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 74.w,),
                Text('Evening',
                  style: TextStyle(
                    color: Color(0xffb7b7b7),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

                    Padding(
                      padding:  EdgeInsets.only(top: 16.h),
                      child: Row(
                        children: [
                          Text('Weekdays',
                            style: TextStyle(
                              color: Color(0xff191919),
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 37.w,),
                          Text('05.30 - 12.30',
                            style: TextStyle(
                              color: Color(0xff191919),
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 51.w,),
                          Text('03.00 - 12.30',
                            style: TextStyle(
                              color: Color(0xff191919),
                              fontSize: 14.sp,

                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(top: 9.h),
                      child: Container(
                        height: 20.h,
                        color: Color(0x6600ff00),
                        child: Row(
                          children: [
                            Text('Weekend',
                              style: TextStyle(
                                color: Color(0xff191919),
                                fontSize: 14.sp,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(width: 37.w,),
                            Text('05.30 - 02.00',
                              style: TextStyle(
                                color: Color(0xff191919),
                                fontSize: 14.sp,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(width: 51.w,),
                            Text('03.00 -  01.00',
                              style: TextStyle(
                                color: Color(0xff191919),
                                fontSize: 14.sp,

                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 32.h,bottom: 33.h),
                      child: Text('Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),


                    SizedBox(
                      width: 345.5.w,
                      height: 2*150.h,
                      child: ListView
                          .separated(
                        scrollDirection:
                        Axis.vertical,
                        itemCount: 2,
                        itemBuilder:
                            (BuildContext
                        context,
                            int index) {
                          return Container(
                            width: 345.w,
                            // height: 130.h,
                            decoration:
                            BoxDecoration(
                                color:
                                Color(0xffffffff)),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Color(0xff191919),
                                    child: Icon(Icons.person_2_outlined,color: Colors.white,),
                                  ),
                                  SizedBox(width: 8.w,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('user1076',
                                        style: TextStyle(
                                          color: Color(0xff191919),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      Text('21 March 2023',
                                        style: TextStyle(
                                          color: Color(0xffb7b7b7),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                                Padding(
                                  padding:  EdgeInsets.only(top:16.h,bottom: 10.h),
                                  child: SizedBox(width:345,
                                    child: Text('Solid equipment and friendly staff, but the locker rooms could use a refresh. Overall, a great workout experience!',
                                      style: TextStyle(
                                        color: Color(0xff191919),
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
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
                            width: 20.w,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 56.h),
                      child: Row(
                        children: [
                          Text('Have issues? Any error? ',
                            style: TextStyle(
                              color:Color(0xff191919),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Text('Contact us',
                            style: TextStyle(
                              color: Color(0xff00ff00),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
          
                  ]
                ),
              ),
          
          
          SizedBox(height: 20.h,)
          
          
          
          
          
          
          
          
          
              ],
          ),
        )
    );
  }
}
