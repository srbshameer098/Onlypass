
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:readmore/readmore.dart';

import '../Repository/ModelClass/FacilityModel.dart';
class Detailed_Page extends StatefulWidget {
  const Detailed_Page({super.key,  required this.fecilityModel});
final FacilityModel fecilityModel;

  @override
  State<Detailed_Page> createState() => _Detailed_PageState();
}
int activeIndex=0;


class _Detailed_PageState extends State<Detailed_Page> {


  String _url = ''; // Example coordinates for New York City

  Future<void> _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => widget.fecilityModel.images![itemIndex].length > itemIndex
                        ? SizedBox(
                      width: 393.w,
                      height: 240.h,
                      child: Image.network(
                       widget.fecilityModel.images![itemIndex].toString(),

                        fit: BoxFit.fill,
                      ),
                    )
                        : const SizedBox(),







                    //Slider Container properties
                    options: CarouselOptions(

                      height: 240.h,
                      enlargeCenterPage: false,
                      autoPlay: true,

                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 1,

                      onPageChanged: (index, reason) {
                        // Update the activeIndex whenever the page changes
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ), itemCount: widget.fecilityModel.images!.length,
                  ),


                  Padding(
                    padding:  EdgeInsets.only(top: 220.h),
                    child: Center(
                      child: AnimatedSmoothIndicator(

                        count: widget.fecilityModel.images!.length,
                        effect: WormEffect(
                            dotColor:const Color(0xffbdbdbd),
                            dotHeight: 6.h,
                            dotWidth: 6.w,
                            activeDotColor: Colors.white
                        ), activeIndex: activeIndex,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:  EdgeInsets.only(left: 24.w,right: 24.w),
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
                                 widget.fecilityModel.facilityName.toString(),
                                  style: TextStyle(
                                      color:Theme.of(context).colorScheme.onSecondary,
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
                            color:Theme.of(context).colorScheme.onSecondary,size: 20.sp,
                          ),
                          Text('${4.3} ',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  fontSize:
                                  14.sp,
                                  fontWeight:
                                  FontWeight
                                      .w600,
                                  fontFamily:
                                  'Montserrat')),
                          SizedBox(width: 32.w,
                            child: Text(
                                '(${240})',
                                style: TextStyle(
                                    color: const Color(
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
                            width: 70.w,
                            height: 24.h,
                              color: const Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/gym.png',
                                    width: 20.30.w,
                                    height: 11.41.h,
                                  ),
                                  Text(
                                      'GYM',
                                      style: TextStyle(
                                          color: const Color(
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
                            width: 64.w,
                            height: 24.h,
                            color: const Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 7.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/pool.png',
                                    width: 20.30.w,
                                    height: 11.41.h,
                                  ),
                                  Text(
                                      'Pool',
                                      style: TextStyle(
                                          color: const Color(
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
          
          
                      SizedBox(width: 54.w,),
          
          
          
                          Container(
                            width: 59.w,
                            height: 24.h,
                            color: const Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 6.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.male,size: 16.sp,  color: const Color(0xff191919),),
                                  Text(
                                      'Male',
                                      style: TextStyle(
                                          color: const Color(
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
                            width: 82.w,
                            height: 24.h,
                            color: const Color(0xFFF0F0F0),
          
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
          
                                  Icon(Icons.female,size: 16.sp,  color: const Color(0xff191919),),
                                  Text(
                                      'Female',
                                      style: TextStyle(
                                          color: const Color(
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
                            color:const Color(0xffb7b7b7) ,),
          
                          SizedBox(width: 8.w,),
          
                          SizedBox(width: 200.w,
                            child: Text(
                              widget.fecilityModel.address.toString(),
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSecondary,



                                    fontSize:
                                    14.sp,
                                    fontWeight:
                                    FontWeight
                                        .w500,
                                    fontFamily:
                                    'Montserrat')),
                          ),
          
                          SizedBox(width: 34.w,),


                          GestureDetector(
                            onTap: (){
                              _url="${ widget.fecilityModel.link.toString()}";
                              _launchURL();
                            },
                            child: Text(
                                'Get direction',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xff1e90ff),
                                    color: const Color(0xff1e90ff),
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
                      padding:  EdgeInsets.only(top: 24.h),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.access_time_outlined,size: 16.sp,
                            color:const Color(0xffb7b7b7),),
          
                          SizedBox(width: 8.w,),
          
                          Text(
                              'Open now',
                              style: TextStyle(
          
                                  color: const Color(0xff36fa00),
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
                                 color: Theme.of(context).colorScheme.onSecondary,
                                  fontSize:
                                  14.sp,
                                  fontWeight:
                                  FontWeight
                                      .w500,
                                  fontFamily:
                                  'Montserrat')),
          
                          SizedBox(width: 64.1.w,),


                          GestureDetector(
                            onTap: ()async {
                              showDialog(

                                  context: context,
                                  builder: (BuildContext context) =>  Dialog(
                                    backgroundColor:   Theme.of(context).colorScheme.onSecondary,
                              child: Container(
                              height: 380.h,
                                // width: 394.w,

                                color: Theme.of(context).colorScheme.onSecondary,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    Padding(
                                      padding:  EdgeInsets.only(top: 24.h,left: 15.w,bottom: 15.h),
                                      child: Text('Opening hours',
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.secondary,
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 9.w,vertical: 10.h),
                                      child: Row(
                                        children: [
                                          SizedBox(width:50.w,
                                            child: Text('Days',
                                              style: TextStyle(
                                                color: const Color(0xffb7b7b7),
                                                fontSize: 14.sp,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 19.w,),
                                          SizedBox(width:100.w,
                                            child: const Text('Morning',
                                              style: TextStyle(
                                                color: Color(0xffb7b7b7),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8.w,),
                                          SizedBox(width:100.w,
                                            child: const Text('Evening',
                                              style: TextStyle(
                                                color: Color(0xffb7b7b7),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),

                                    SizedBox(height: 250,
                                      child: ListView.builder(
                                          itemCount: widget.fecilityModel.facilityTiming!.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            return  Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                              child: Row(
                                                children: [
                                                  SizedBox(width:50.w,
                                                    child: Text(
                                                      widget.fecilityModel.facilityTiming![index].day.toString()
                                                      ,
                                                      style: TextStyle(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 14.sp,
                                                        fontFamily: 'Montserrat',
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 19.w,),
                                                  SizedBox(width:100.w,
                                                    child: Text(
                                                      widget.fecilityModel.facilityTiming![index].morning!.start.toString(),
                                                      style: TextStyle(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 14.sp,
                                                        fontFamily: 'Montserrat',
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 8.w,),
                                                  SizedBox(width:100.w,
                                                    child: Text('03.00 - 12.30',
                                                      style: TextStyle(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 14.sp,

                                                        fontFamily: 'Montserrat',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),





                                  ],
                                ),
                              ),
                              ));
                            },

                            child: Text(
                                'Opening hours',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xff1e90ff),
                                    color: const Color(0xff1e90ff),
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
                      padding:  EdgeInsets.only(top: 32.h),
                      child: Text(
                          'About',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
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
                        child: ReadMoreText(
                          widget.fecilityModel.description.toString(),
                            trimMode: TrimMode.Line,
    trimLines: 4,
    colorClickableText:   Theme.of(context).colorScheme.onSecondary,
    trimCollapsedText: 'Read more',
    trimExpandedText: 'Show less',
                            style: TextStyle(
                                color: const Color(0xffb7b7b7),
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
                              color: const Color(0xFFFFFFFF),
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
                                          color: const Color(
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
                               color: const Color(0xFFFFFFFF),
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
                                          color: const Color(
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
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
          
          
          
                              Text(
                                  'Facilities and amenities',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontSize:
                                      14.sp,
                                      fontWeight:
                                      FontWeight
                                          .w600,
                                      fontFamily:
                                      'Montserrat')),
                              SizedBox(width: 74.5.w,),
                              Text(
                                  'Equipment list',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0xff1e90ff),
                                      color: const Color(0xff1e90ff),
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
          
          
                    SizedBox(height:(widget.fecilityModel.amenities!.length/1.2)*50.h,
                      child: GridView.builder(
                        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,


                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 200/50,
                          ),
                          itemCount: widget.fecilityModel.amenities!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 80,
                              decoration: const BoxDecoration(
                                // border: Border.all(width: 1,
                                // color: Colors.grey.shade900),
                                //  color: Colors.amber,
                              ),


                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width:24.w,
                                      height: 24.h,
                                      color: const Color(0xfff0f0f0),
                                      child: Padding(
                                        padding:  EdgeInsets.only(left:2.w,right: 2.w,top: 2.h,bottom: 2.h),
                                        child: Image.network(widget.fecilityModel.amenities![index].iconUrl!.toString(),width: 14.w,height: 14.h,),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 8.w),
                                      child: Text(widget.fecilityModel.amenities![index].amenitiesName.toString(),
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Theme.of(context).colorScheme.onSecondary,
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
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
          
          Padding(
            padding:  EdgeInsets.only(top: 26.h),
            child: Row(
              children: [
                const Text('Days',
                  style: TextStyle(
                    color: Color(0xffb7b7b7),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 74.w,),
                const Text('Morning',
                  style: TextStyle(
                    color: Color(0xffb7b7b7),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 74.w,),
                const Text('Evening',
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
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 37.w,),
                          Text('05.30 - 12.30',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 51.w,),
                          Text('03.00 - 12.30',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
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
                        color: const Color(0x6600ff00),
                        child: Row(
                          children: [
                            Text('Weekend',
                              style: TextStyle(
                                color: const Color(0xff191919),
                                fontSize: 14.sp,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(width: 37.w,),
                            Text('05.30 - 02.00',
                              style: TextStyle(
                                color: const Color(0xff191919),
                                fontSize: 14.sp,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(width: 51.w,),
                            Text('03.00 -  01.00',
                              style: TextStyle(
                                color: const Color(0xff191919),
                                fontSize: 14.sp,

                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 32.h,bottom: 30.h),
                      child: Text('Reviews',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 14.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),


          Row (crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3.3,
                minRating: 0,
                itemSize: 21.sp,
                unratedColor: Colors.grey.shade300,
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,

                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.onSecondary,

                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(width: 10.w,),
              Text(
                '4.5',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                ),
              )
            ],
          ),
                    Padding(
                      padding:  EdgeInsets.only(top: 6.h),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          SizedBox(width:220,
                            child: LinearProgressBar(
                              maxSteps: 200,
                              progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                              currentStep: 174,
                              progressColor: Theme.of(context).colorScheme.onSecondary,
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),

                          SizedBox(width: 24.w,),

                          Text(
                            '174 Reviews',
                            style: TextStyle(
                              color: const Color(0xFFB7B7B7),
                              fontSize: 13.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                      width: 345.5.w,
                      height: 2*150.h,
                      child: ListView
                          .separated(
                        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
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
                              color: Theme.of(context).colorScheme.secondary,),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16.r,
                                    backgroundColor: Theme.of(context).colorScheme.onSecondary,
                                    child: Icon(Icons.person_2_outlined,color: Theme.of(context).colorScheme.secondary,),
                                  ),
                                  SizedBox(width: 8.w,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('user1076',
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.onSecondary,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      const Text('21 March 2023',
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
                                        color: Theme.of(context).colorScheme.onSecondary,
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
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const Text('Contact us',
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
