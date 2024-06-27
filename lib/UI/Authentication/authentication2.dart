import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlypass/UI/Authentication/verify.dart';

import '../../Utils/Utils.dart';
import '../../bloc/customer_login/login_bloc.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool loading = false;
  final auth = FirebaseAuth.instance;
  final phoneNumberController = TextEditingController();

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
                  //     height: 164.8.h,
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(29.w),
              height: 343.h,
              width: double.infinity,
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Phone number for verification',
                    style: TextStyle(
                      color: Color(0xFFE4E4E4),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: SizedBox(
                      width: 375.w,
                      child: const Text(
                        "Enter your phone number for a quick OTP verification. We'll get you logged in right away!",
                        style: TextStyle(
                          color: Color(0xFF6F6F70),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      width: double.infinity,
                      height: 56.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF282828),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.asset(
                          //   'assets/icons/indflag.png',
                          //   height: 16.sp,
                          // ),
                          const Text(
                            '+91',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.6,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          ),
                          VerticalDivider(
                            color: Color(0xFF191919),
                            width: 1.5,
                            thickness: 2,
                            indent: 8.h,
                            endIndent: 8.h,
                          ),
                          SizedBox(width: 5.w),
                          SizedBox(
                            height: 20,
                            width: 240,
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.phone,
                              controller: phoneNumberController,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                              ],
                              style: const TextStyle(
                                color: Color(0xFFFEFEFE),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.6,
                              ),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: 'Enter 10 Digit Mobile Number',
                                hintStyle: TextStyle(
                                  color: Color(0xFF6F6F70),
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is LoginblocLoading) {
                          setState(() {
                            loading = true;
                          });
                        }

                        if (state is LoginblocLoaded) {
                          auth.verifyPhoneNumber(
                            phoneNumber: '+91${phoneNumberController.text}',
                            verificationCompleted: (_) {
                              setState(() {
                                loading = false;
                              });
                            },
                            verificationFailed: (e) {
                              setState(() {
                                loading = false;
                              });
                              Utils().toastMessage(e.toString());
                            },
                            codeSent: (String verificationId, int? token) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Verification_code(
                                    verificationId: verificationId, phoneNum: phoneNumberController.text.toString(),
                                  ),
                                ),
                              );
                              setState(() {
                                loading = false;
                              });
                            },
                            codeAutoRetrievalTimeout: (e) {
                              Utils().toastMessage(e.toString());
                              setState(() {
                                loading = false;
                              });
                            },
                          );
                        }

                        if (state is LoginblocError) {
                          setState(() {
                            loading = false;
                          });
                        }
                      },
                      child: GestureDetector(
                        onTap: () {
                          if (phoneNumberController.text.isEmpty) {
                            Utils().toastMessage('Enter Mobile Number');
                          } else if (phoneNumberController.text.length < 10) {
                            Utils().toastMessage('Enter Valid Mobile Number');
                          } else {
                            context.read<LoginBloc>().add(Fetchlogin(
                              phoneNumber:
                              phoneNumberController.text.toString(),
                            ));
                          }
                        },
                        child: Container(
                          height: 48.h,
                          width: double.infinity.w,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFefefe),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                          child: Center(
                            child: loading
                                ? const CircularProgressIndicator(
                              color: Color(0xff282828),
                            )
                                : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Continue',
                                    style: TextStyle(color: Colors.black)
                                  // GoogleFonts.montserrat(
                                  //   color: const Color(0xFF191919),
                                  //   fontSize: 14.sp,
                                  //   fontWeight: FontWeight.w600,
                                  // ),
                                ),
                                SizedBox(width: 12.w),
                                const Icon(Icons.east_rounded),
                              ],
                            ),
                          ),
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
    );
  }
}