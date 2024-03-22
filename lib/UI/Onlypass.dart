import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onlypass extends StatefulWidget {
  const Onlypass({Key? key}) : super(key: key);

  @override
  State<Onlypass> createState() => _OnlypassState();
}

class _OnlypassState extends State<Onlypass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Onlypass',
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
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.2.h),
        child: Column(
          children: [
            SizedBox(
              height: 630.h,
              child: ListView(
                children: <Widget>[
                  ///--------------  Gold Pass  -------------------///

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Stack(children: [
                        Container(
                          width: 350.w,
                          height: 172.h,
                          color: Color(0xff191919),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.h, horizontal: 12.5.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Gold Pass',
                                        style: TextStyle(
                                            color: Color(0xffd2ad63),
                                            fontSize: 16.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700)),
                                    Text('Best value for money.',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Text(
                                        'Unlimited Visit to ${1165}+ \nFitness Centers in Kerala',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    Text('Free access to training videos',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                              Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 0.w,
                                    height: 170,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      child: SizedBox(
                                        height: 170.h,
                                        child: DottedLine(
                                          direction: Axis.vertical,
                                          dashLength: 3,
                                          dashGapLength: 5,
                                          lineThickness: 1,
                                          dashRadius: 1.r,
                                          dashColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 3.w,
                                    top: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    )),
                                Positioned(
                                    left: 3.w,
                                    bottom: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    ))
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.5.w, vertical: 12.h),
                                child: Column(
                                  children: [
                                    Text('30 Days\nAccess',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text('Starts from',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    Container(
                                      width: 72.w,
                                      height: 36.h,
                                      color: Color(0xff00ff00),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Rs. 1,999',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600)),
                                          Text('  /Month',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),

                  ///--------------  Silver Pass  -------------------///

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Stack(children: [
                        Container(
                          width: 350.w,
                          height: 172.h,
                          color: Color(0xff191919),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.h, horizontal: 9.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Silver Pass',
                                        style: TextStyle(
                                            color: Color(0xffececec),
                                            fontSize: 16.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700)),
                                    Text('Budget-friendly for everyone.',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Text(
                                        'Unlimited Visit to ${11076}+ \nFitness Centers in Kerala',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    Text('See the fitness clubs included',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.white,
                                            color: Color(0xffdadada),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                              Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 0.w,
                                    height: 170,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      child: SizedBox(
                                        height: 170.h,
                                        child: DottedLine(
                                          direction: Axis.vertical,
                                          dashLength: 3,
                                          dashGapLength: 5,
                                          lineThickness: 1,
                                          dashRadius: 1.r,
                                          dashColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 3.w,
                                    top: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    )),
                                Positioned(
                                    left: 3.w,
                                    bottom: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    ))
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.w, vertical: 12.h),
                                child: Column(
                                  children: [
                                    Text('30 Days\nAccess',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text('Starts from',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    Container(
                                      width: 72.w,
                                      height: 36.h,
                                      color: Color(0xff00ff00),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Rs. 999',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600)),
                                          Text('  /Month',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        // Positioned(
                        //     left: 250.w,
                        //     top: 167.h,
                        //     child: CircleAvatar(radius: 5,backgroundColor: Colors.white,))
                      ]),
                    ),
                  ),

                  ///--------------  Platinum Pass  -------------------///

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Stack(children: [
                        Container(
                          width: 350.w,
                          height: 172.h,
                          color: Color(0xff191919),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.h, horizontal: 5.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Platinum Pass',
                                        style: TextStyle(
                                            color: Color(0xff8ca9b1),
                                            fontSize: 16.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700)),
                                    Text('VIP full access with no restriction.',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Text(
                                        'Access any fitness center in\nthe network with premium pass',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    Text('Elite access to whole content',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                              Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 0.w,
                                    height: 170,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      child: SizedBox(
                                        height: 170.h,
                                        child: DottedLine(
                                          direction: Axis.vertical,
                                          dashLength: 3,
                                          dashGapLength: 5,
                                          lineThickness: 1,
                                          dashRadius: 1.r,
                                          dashColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 3.w,
                                    top: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    )),
                                Positioned(
                                    left: 3.w,
                                    bottom: 167.h,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                    ))
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 12.h),
                                child: Column(
                                  children: [
                                    Text('30 Days\nAccess',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text('Starts from',
                                        style: TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    Container(
                                      width: 72.w,
                                      height: 36.h,
                                      color: Color(0xff00ff00),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Rs. 3,199',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600)),
                                          Text('  /Month',
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('I have a membership plan already',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff1e90ff),
                      color: Color(0xff1e90ff),
                      fontSize: 14.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
