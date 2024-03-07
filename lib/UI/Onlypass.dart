

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
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text('Onlypass',style: TextStyle(color: Colors.white),) ,
          actions: [Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Icon(Icons.menu,color: Colors.white,),
          )],
        ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          children: [
            SizedBox(height: 650.h,
              child: ListView(
              
                children: <Widget>[


                  //--------------  Gold Pass  -------------------//

                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h),
                    child: Container(
                      width: 345.w,
                      height: 182.h,
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 8.h),
                        child: Stack(
                          children: [Container(
                            width: 345.w,
                            height: 172.h,
                            color: Colors.black,
                            child: Row(
                                                      children: [

                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 11.w),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Gold Pass',
                                      style:TextStyle(
                                          color: Color(0xffd2ad63),
                                          fontSize: 16.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),

                                  Text('Best value for money.',
                                      style:TextStyle(
                                          color: Color(0xffdadada),
                                          fontSize: 12.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                  SizedBox(height: 30.h,),
                                  Text('Unlimited Visit to ${1165}+ \nFitness Centers in Kerala',
                                      style:TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                  SizedBox(height: 14.h,),
                                  Text('Free access to training videos',
                                      style:TextStyle(
                                          color: Color(0xffdadada),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                ],

                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 10.h),
                              child: SizedBox(height: 150.h,
                                child: DottedLine(
                                  direction: Axis.vertical,
                                  dashLength: 5,
                                  dashGapLength: 5,
                                  lineThickness: 1,
                                  dashRadius: 1.r,
                                  dashColor: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 11.w,vertical: 12.h),
                              child: Column(
                                children: [

                                  Text('30 Days\nAccess',
                                      style:TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                  SizedBox(height: 50.h,),

                                  Text('Starts from',
                                      style:TextStyle(
                                          color: Color(0xffdadada),
                                          fontSize: 12.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                  Container(
                                    width: 72.w,
                                    height: 36.h,
                                    color: Color(0xff00ff00),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Rs. 1,999',
                                            style:TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 12.sp,
                                                fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),



                                        Text('  /Month',
                                            style:TextStyle(
                                                color: Color(0xfd000000),
                                                fontSize: 10.sp,
                                                fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                      ],
                                    ),
                                  )

                                ],
                              ),
                            )
                                                      ],
                            ),
                          ),
                            Positioned(

                              bottom: 151.5,
                              left: 212,

                                child: CircleAvatar(radius: 5,backgroundColor: Colors.white,)),


                            Positioned(
                                left: 212,
                                top: 151.5,
                                child: CircleAvatar(radius: 5,backgroundColor: Colors.white,))
                        ]
                        ),
                      )),
                  ),


                  //--------------  Silver Pass  -------------------//


                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h),
                    child: Container(
                        width: 345.w,
                        height: 182.h,
                        color: Colors.white,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 8.h),
                          child: Stack(
                              children: [Container(
                                width: 345.w,
                                height: 172.h,
                                color: Colors.black,
                                child: Row(
                                  children: [

                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 11.w),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Silver Pass',
                                              style:TextStyle(
                                                  color: Color(0xffececec),
                                                  fontSize: 16.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),

                                          Text('Budget-friendly for everyone.',
                                              style:TextStyle(
                                                  color: Color(0xffdadada),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                          SizedBox(height: 30.h,),
                                          Text('Unlimited Visit to ${11076}+ \nFitness Centers in Kerala',
                                              style:TextStyle(
                                                  color: Color(0xffffffff),
                                                  fontSize: 14.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                          SizedBox(height: 14.h,),
                                          Text('See the fitness clubs included',
                                              style:TextStyle(
                                                  color: Color(0xffffffff),
                                                  textBaseline: TextBaseline.alphabetic,
                                                  fontSize: 13.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),

                                        ],

                                      ),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 10.h),
                                      child: SizedBox(height: 150.h,
                                        child: DottedLine(
                                          direction: Axis.vertical,
                                          dashLength: 5,
                                          dashGapLength: 5,
                                          lineThickness: 1,
                                          dashRadius: 1.r,
                                          dashColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 11.w,vertical: 12.h),
                                      child: Column(
                                        children: [

                                          Text('30 Days\nAccess',
                                              style:TextStyle(
                                                  color: Color(0xffffffff),
                                                  fontSize: 14.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                          SizedBox(height: 50.h,),

                                          Text('Starts from',
                                              style:TextStyle(
                                                  color: Color(0xffdadada),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                          Container(
                                            width: 72.w,
                                            height: 36.h,
                                            color: Color(0xff00ff00),
                                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('Rs. 999',
                                                    style:TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),



                                                Text('  /Month',
                                                    style:TextStyle(
                                                        color: Color(0xfd000000),
                                                        fontSize: 10.sp,
                                                        fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                                Positioned(

                                    bottom: 151.5,
                                    left: 207,

                                    child: CircleAvatar(radius: 5,backgroundColor: Colors.white,)),


                                Positioned(
                                    left: 207,
                                    top: 151.5,
                                    child: CircleAvatar(radius: 5,backgroundColor: Colors.white,))
                              ]
                          ),
                        )),
                  ),


                  //--------------  Platinum Pass  -------------------//


                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.h),
                    child: Stack(
                        children: [Container(
                          width: 350.w,
                          height: 172.h,
                          color: Colors.black,
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Padding(
                                padding:  EdgeInsets.only(right: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text('Platinum Pass',
                                        style:TextStyle(
                                            color: Color(0xff8ca9b1),
                                            fontSize: 16.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),

                                    Text('VIP full access with no restriction.',
                                        style:TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                    SizedBox(height: 30.h,),
                                    Text('Access any fitness center in\nthe network with premium pass ',
                                        style:TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 13.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                    SizedBox(height: 14.h,),
                                    Text('Elite access to whole content',
                                        style:TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                  ],

                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 10.h),
                                child: SizedBox(height: 150.h,
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    dashLength: 5,
                                    dashGapLength: 5,
                                    lineThickness: 1,
                                    dashRadius: 1.r,
                                    dashColor: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [

                                    Text('30 Days\nAccess',
                                        style:TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 14.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                    SizedBox(height: 50.h,),

                                    Text('Starts from',
                                        style:TextStyle(
                                            color: Color(0xffdadada),
                                            fontSize: 12.sp,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                    Container(
                                      width: 72.w,
                                      height: 36.h,
                                      color: Color(0xff00ff00),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Rs. 3,999',
                                              style:TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),



                                          Text('   /Month',
                                              style:TextStyle(
                                                  color: Color(0xfd000000),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                          Positioned(

                              bottom: 151.5,
                              left: 212,

                              child: CircleAvatar(radius: 5,backgroundColor: Colors.white,)),


                          Positioned(
                              left: 212,
                              top: 151.5,
                              child: CircleAvatar(radius: 5,backgroundColor: Colors.white,))
                        ]
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
