import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title:Text('Profile',style: TextStyle(color: Colors.white),) ,
      //   actions: [Icon(Icons.list)],
      //   )
      body: SafeArea(
        child: Column(
          children: [
            //----------------- 1st container ------------//
            Container(
              width: 375.w,
              height: 267.h,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: 'Montserrat')),
                        SizedBox(
                          width: 227.w,
                        ),
                        Container(
                          width: 48.w,
                          height: 48.h,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/image/QRcode.png',
                            width: 36.w,
                            height: 36.h,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(
                      'assets/icons/IconProfile.png',
                      width: 80.w,
                      height: 83.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add your profile picture here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: 'Montserrat')),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
              child: Column(
                children: [
                  //----------------- 2nd container ------------//

                  Container(
                    width: 345.w,
                    height: 40.h,
                    color: Colors.black,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                      child: Row(
                        children: [
                          Text('My membership',
                              style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Montserrat')),
                         SizedBox(
                            width: 165.w,
                          ),
                      Image.asset(
                        'assets/icons/Group.png',
                        width: 13.w,
                        height: 11.4.h,
                      ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  SizedBox(
                    height: 350.h,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(0),
                      crossAxisSpacing: 2.w,
                      mainAxisSpacing: 2.h,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15),
                          color: Color(0x33dadada),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset(
                            'assets/icons/pi.png',
                            width: 28.w,
                            height: 28.h,
                          ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Personal Information',
                                  style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 7.h,
                              ),

                              Text('Edit your details, add your address.',
                                  style:TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontFamily: 'Montserrat')),

                            ],
                          ),
                        ),
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15),
                          color: Color(0x33dadada),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/pt.png',
                                width: 28.w,
                                height: 28.h,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Progress \nTracker',
                                  style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 7.h,
                              ),

                              Text('See your changes, achievements.',
                                  style:TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontFamily: 'Montserrat')),

                            ],
                          ),
                        ),
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15),
                          color: Color(0x33dadada),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/settings.png',
                                width: 28.w,
                                height: 28.h,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Settings & Support',
                                  style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 7.h,
                              ),

                              Text('Connect with your friends, follow events.',
                                  style:TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontFamily: 'Montserrat')),

                            ],
                          ),
                        ),
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15),
                          color: Color(0x33dadada),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/reward.png',
                                width: 28.w,
                                height: 28.h,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Rewards & \nRefer',
                                  style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Montserrat',fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 7.h,
                              ),

                              Text('Edit your details, add your address.',
                                  style:TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontFamily: 'Montserrat')),

                            ],
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
