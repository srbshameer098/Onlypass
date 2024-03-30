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
        child: SingleChildScrollView(
          child: Column(
            children: [
              //----------------- 1st container ------------//
              Container(
                width: 393.w,
                height: 267.h,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
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
                        height: 17.h,
                      ),
                      Image.asset(
                        'assets/icons/IconProfile.png',
                        width: 80.w,
                        height: 83.h,
                      ),
                      SizedBox(
                        height: 10.h,
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
                padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 30.h),
                child: Column(
                  children: [
                    //----------------- 2nd container ------------//
          
                    Container(
                      width: 345.w,
                      height: 40.h,
                      color: Colors.black,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15.w,),
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
                      height: 30.h,
                    ),
          
                    SizedBox(
                      height: 172*2.h,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                        crossAxisSpacing: 2.w,
                        mainAxisSpacing: 2.h,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15),
                            width: 172.w,
                            height: 172.h,
                            color: const Color(0x33dadada),
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
                            color: const Color(0x33dadada),
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
                            color: const Color(0x33dadada),
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
                            color: const Color(0x33dadada),
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
      ),
    );
  }
}
