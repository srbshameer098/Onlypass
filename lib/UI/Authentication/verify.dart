import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlypass/UI/Bottomnav.dart';
import 'package:otp_input_editor/otp_input_editor.dart';

import '../../Utils/Utils.dart';

class Verification_code extends StatefulWidget {
  final String verificationId;

  const Verification_code(
      {super.key,
      required this.verificationId,
      required String phoneNum,
      required verificationcode});

  @override
  State<Verification_code> createState() => _Verification_codeState();
}

class _Verification_codeState extends State<Verification_code> {
  bool loading = false;

  final verificationCodeController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text('Verify'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding: EdgeInsets.all(28.w),
                height: 343.h,
                width: double.infinity.w,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: OtpTextField(
                        clearText: true,
                        alignment: FractionalOffset.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        fieldWidth: 48.w,
                        fieldHeight: 48.h,
                        borderWidth: 1,
                        borderRadius: BorderRadius.circular(5),
                        focusedBorderColor: Colors.grey,
                        textStyle: TextStyle(color: Colors.black),
                        fillColor: Color(0xFF818181),
                        filled: true,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        numberOfFields: 6,
                        enabledBorderColor: Colors.transparent,
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {
                          verificationCodeController.text = code;
                        },
                        onSubmit: (String verificationCode) {
                          verificationCodeController.text = verificationCode;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      height: 48.h,
                      width: double.infinity.w,
                      decoration: ShapeDecoration(
                        color: const Color(0xff000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: TextButton(
                          child: const Text(
                            'Verify',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          onPressed: () async {
                            setState(() {
                              loading = true;
                            });

                            final credential = PhoneAuthProvider.credential(
                                verificationId: widget.verificationId,
                                smsCode:
                                    verificationCodeController.text.toString());

                            try {
                              await auth.signInWithCredential(credential);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav()));
                            } catch (e) {
                              setState(() {
                                loading = false;
                              });
                              Utils().toastMessage(e.toString());
                            }
                          }),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
