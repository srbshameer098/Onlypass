import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Repository/ModelClass/login_model.dart';

import '../../Repository/ModelClass/login_model.dart';
import '../../bloc/customer_login/login_bloc.dart';
import '../Bottomnav.dart';
import 'Verify_code.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(milliseconds: 100), () {
  //     showModalBottomSheet(
  //       context: context,
  //       builder: (context) => Container(
  //         height: 343,
  //         color: Colors.red,
  //       ), // Replace with your bottom sheet content widget
  //     );
  //   });
  // }
  bool loading =false ;
  final PhoneNumberController = TextEditingController();
  // final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
          Expanded(
          child: Stack(
          alignment: Alignment.topCenter,
            children: [
              // Positioned(
              //   top: 0.h,
              //   child: Image.asset(
              //     'assets/images/imgLog.png',
              //     width: 430.w,
              //     height: 880.h,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Positioned(
              //   top: 86.h,
              //   child: Image.asset(
              //     'assets/images/captianLogo.png',
              //     alignment: Alignment.center,
              //     width: 143.w,
              //     height: 164.80.h,
              //   ),
              // ),
            ],
          ),
        ),
        Container(
        padding: EdgeInsets.all(29.w),
    height: 343.h,
    width: double.infinity.w,
    color: Colors.grey[900],
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Enter registered mobile number',
      style: TextStyle(fontSize: 16.sp),
    // style: GoogleFonts.montserrat(
    // color: const Color(0xFFE4E4E4),
    // fontSize: 16.sp,
    // fontWeight: FontWeight.w600,
    // ),
    ),
    Padding(
    padding: EdgeInsets.symmetric(vertical: 16.h),
    child: SizedBox(
    width: 375.w,
    child: Text(
    'Please confirm your country code and enter your registered mobile number with Onlypass.',
    style: TextStyle(fontSize: 12.sp),
    // style: GoogleFonts.montserrat(
    // color: const Color(0xFF6F6F70),
    // fontSize: 12.sp,
    // fontWeight: FontWeight.w400,
    // ),
    ),
    ),
    ),
    Padding(
    padding:  EdgeInsets.symmetric(vertical: 16.h),
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w),
    width: 375.w,
    height: 55.h,
    decoration: ShapeDecoration(
    color: const Color(0xFF282828),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(1.r)),
    ),
    child:       Column(
      children: [
        SizedBox(height: 10.h,),
            TextFormField(



              keyboardType: TextInputType.phone,
              controller: PhoneNumberController,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,

                  prefixText: '+91  ',
                  hintText: 'Enter 10 Digit Mobile Number'

              ),
            ),

      ],
    ),

    ),
    ),
      Padding(
        padding:  EdgeInsets.only(top: 24.w),
        child: BlocListener<LoginBloc, LoginState>(
  listener: (context, state) {
    if(state is LoginblocLoading){
      print("Loaddddddding");
    }

    if (state is LoginblocLoaded) {
     BlocProvider
          .of<LoginBloc>(context).loginmodel;

      Navigator.push(context, MaterialPageRoute(builder: (_)=> BottomNav()));
      print('hello');
    }
    if (state is LoginblocError){
      print("error");
    }
    // TODO: implement listener
  },
  child: GestureDetector(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (_)=> const Verify_code()));
            BlocProvider.of<LoginBloc>(context).add(
              Fetchlogin(phoneNumber:'+91${PhoneNumberController.toString()}'),

            );
            print(PhoneNumberController);
          },
          child: Container(
            width: 378.w,
            height: 48.h,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEFEFE),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.r)),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                     style:TextStyle(color: Colors.black)
                    // GoogleFonts.montserrat(
                    //   color: const Color(0xFF191919),
                    //   fontSize: 14.sp,
                    //   fontWeight: FontWeight.w600,
                    // ),
                  ),

                  SizedBox(
                    width: 12.w,
                  ),
                  const Icon(
                    Icons.east_rounded,color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
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