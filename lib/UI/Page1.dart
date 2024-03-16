import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        Column(
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
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      children: [
                        Center(
                          child: SizedBox(width: 200.w,
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
                          width: 65.w,
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
                  Row(
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
                  )
                ],
              ),
            ),












    ],
        )
    );
  }
}
