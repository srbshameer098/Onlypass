import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:qr_flutter/qr_flutter.dart';

class Access extends StatefulWidget {
  const Access({Key? key}) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Access',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Stack(children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 50.h),
                          child: SizedBox(
                            width: 200.w,
                            height: 200.h,


                          ///-----------QR code  -------------------///


                            child: QrImageView(
                              data:
                                  'This QR code has an embedded image as well',
                              version: QrVersions.auto,
                              size: 320,
                              gapless: false,
                              embeddedImage: AssetImage(
                                  'assets/images/my_embedded_image.png'),
                              embeddedImageStyle: QrEmbeddedImageStyle(
                                size: Size(80, 80),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 46.w,
                        top: 28.h,
                        child: Image.asset(
                          'assets/image/QRboarder.png',
                          width: 260.w,
                          height: 260.h,
                        ),
                      )
                    ]),
                  ),

                  // SizedBox(height: 10.h,),

                  Text('Active membership',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///-----------Renew Container  -------------------///

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade900),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Gold Club Pass',
                                  style: TextStyle(
                                      color: Color(0xffd2ad63),
                                      fontSize: 16.sp,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600)),
                              Row(
                                children: [
                                  Text('Ends on ',
                                      style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  Text('June 24, 2024',
                                      style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 78.w,
                          ),
                          Container(
                            width: 66.w,
                            height: 22,
                            color: Color(0xff191919),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Center(
                                child: Text('Renew',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 12.sp,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  Text('Active membership',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///-----------Contact Container  -------------------///

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade900),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Skyline Hotel (Silver)',
                                  style: TextStyle(
                                      color: Color(0xff191919),
                                      fontSize: 16.sp,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600)),
                              Row(
                                children: [
                                  Text('Ends on ',
                                      style: TextStyle(
                                          color: Color(0xfff44336),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  Text('May 16, 2024',
                                      style: TextStyle(
                                          color: Color(0xfff44336),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 69.w,
                          ),

                          ///-----------Upgrade Membership Container  -------------------///


                          Container(
                            width: 66.w,
                            height: 22,
                            color: Color(0xff191919),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Center(
                                child: Text('Contact',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 12.sp,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      // border: Border.all(
                      //     color: Colors.grey,
                      //     width: 4.0,
                      //     style: BorderStyle.solid), //Border.all

                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff545454),
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                        // BoxShadow(
                        //   color: Colors.white,
                        //   offset: const Offset(0.0, 0.0),
                        //   blurRadius: 0.0,
                        //   spreadRadius: 0.0,
                        // ), //BoxShadow
                      ],
                    ), //BoxDe
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.5.w, vertical: 15.h),
                      child: Row(
                        children: [
                          Text(
                              'Upgrade your membership to Platinum\nPass to access all fitness centers.',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400)),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 5.h),
                            child: Image.asset(
                              'assets/icons/Group.png',
                              width: 13.w,
                              height: 11.4.h,
                            ),
                          )
                        ],
                      ),
                    ), // coration
                  ),
                ])));
  }
}
