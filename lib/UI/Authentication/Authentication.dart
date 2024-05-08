import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/Utils.dart';
import 'Verify_code.dart';
// import 'package:lottie/lottie.dart';

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {

  bool loading =false ;
  final PhoneNumberController = TextEditingController();
  // final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie.asset(
          //   'assets/lottie/Push ups.json',
          //   height: 100.0,
          //   repeat: true,
          //   reverse: true,
          //   animate: true,
          // ),
          Center(
            child: Container(
              // height: 400.h,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // border: Border.all(width: 1,color: Colors.grey),
                  color: const Color(0xfce5e5e5)),child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h,),
                  Center(
                    child: SizedBox(height: 150.h,width: 150.w,
                      child: Image.asset("assets/icons/logo.png",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:  Text('Login with Phone', style: TextStyle(color: Colors.black,fontSize: 26.sp,fontWeight: FontWeight.w600),)
                  ),
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:  Text('Enter the  phone Number', style: TextStyle(color: Colors.black,fontSize: 18.sp),textAlign: TextAlign.center,)
                  ),

                  SizedBox(height: 60.h,),
                  TextFormField(


                    keyboardType: TextInputType.phone,
                    controller: PhoneNumberController,
                    decoration: const InputDecoration(

                        prefixText: '+91',
                        hintText: '99999 99999',
                    ),
                  ),
                  SizedBox(height: 80.h,),
                  TextButton(onPressed: (){
                    setState(() {
                      loading = true ;
                    });

                    // verifyPhoneNumber(
                    //     phoneNumber: "+91${PhoneNumberController.text}",
                    //     verificationCompleted: (_){
                    //
                    //       setState(() {
                    //         loading = false ;
                    //       });
                    //
                    //     },
                    //     verificationFailed: (e){
                    //       setState(() {
                    //         loading = false ;
                    //       });
                    //       Utils().toastMessage(e.toString());
                    //     },
                    //     codeSent: (String verificationId , int? token){
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context)=>Verify_code()));
                    //       setState(() {
                    //         loading = false ;
                    //       });
                    //     },
                    //     codeAutoRetrievalTimeout: (e){
                    //       Utils().toastMessage(e.toString());
                    //       setState(() {
                    //         loading = false ;
                    //       });
                    //     });
                  }, child: const Text('Next'))

                ],
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
