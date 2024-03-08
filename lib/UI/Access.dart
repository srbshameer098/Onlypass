import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Access extends StatefulWidget {
  const Access({Key? key}) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }


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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children:
                <Widget>[
                  Expanded(flex: 1, child: _buildQrView(context)),
                  Center(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        if (result != null)
                          Text(
                              'Barcode Type: ${describeEnum(
                                  result!.format)}   Data: ${result!.code}')
                        else
                          const Text('Scan a code'),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: <Widget>[
                        //     Container(
                        //       margin: const EdgeInsets.all(8),
                        //       child: ElevatedButton(
                        //           onPressed: () async {
                        //             await controller?.toggleFlash();
                        //             setState(() {});
                        //           },
                        //           child: FutureBuilder(
                        //             future: controller?.getFlashStatus(),
                        //             builder: (context, snapshot) {
                        //               return Text('Flash: ${snapshot.data}');
                        //             },
                        //           )),
                        //     ),
                        //     Container(
                        //       margin: const EdgeInsets.all(8),
                        //       child: ElevatedButton(
                        //           onPressed: () async {
                        //             await controller?.flipCamera();
                        //             setState(() {});
                        //           },
                        //           child: FutureBuilder(
                        //             future: controller?.getCameraInfo(),
                        //             builder: (context, snapshot) {
                        //               if (snapshot.data != null) {
                        //                 return Text(
                        //                     'Camera facing ${describeEnum(
                        //                         snapshot.data!)}');
                        //               } else {
                        //                 return const Text('loading');
                        //               }
                        //             },
                        //           )),
                        //     )
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: <Widget>[
                        //     Container(
                        //       margin: const EdgeInsets.all(8),
                        //       child: ElevatedButton(
                        //         onPressed: () async {
                        //           await controller?.pauseCamera();
                        //         },
                        //         child: const Text('pause',
                        //             style: TextStyle(fontSize: 20)),
                        //       ),
                        //     ),
                        //     Container(
                        //       margin: const EdgeInsets.all(8),
                        //       child: ElevatedButton(
                        //         onPressed: () async {
                        //           await controller?.resumeCamera();
                        //         },
                        //         child: const Text('resume',
                        //             style: TextStyle(fontSize: 20)),
                        //       ),
                        //     )
                        //   ],
                        // ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),

                  Text('Active membership',
                      style:TextStyle(
                          color: Color(0xff191919),
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
SizedBox(height: 20.h,),

Container(
  decoration: BoxDecoration(
    border: Border.all(
        width: 1, color: Colors.grey.shade900),
  ),

  child: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10),
    child: Row(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Gold Club Pass',
                style:TextStyle(
                    color: Color(0xffd2ad63),
                    fontSize: 16.sp,
                    fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),

            Row(
              children: [
                Text('Ends on ',
                    style:TextStyle(
                        color: Color(0xff191919),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                Text('June 24, 2024',
                    style:TextStyle(
                        color: Color(0xff191919),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
              ],
            ),


          ],
        ),
SizedBox(width: 78.w,),
        Container(
          width: 66.w,
          height: 22,
          color: Color(0xff191919),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: Center(
              child: Text('Renew',
                  style:TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 12.sp,
                      fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
            ),
          ),
        )
      ],
    ),
  ),
),





                  SizedBox(height: 20.h,),

                  Text('Active membership',
                      style:TextStyle(
                          color: Color(0xff191919),
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                  SizedBox(height: 20.h,),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Colors.grey.shade900),
                    ),

                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Skyline Hotel (Silver)',
                                  style:TextStyle(
                                      color: Color(0xffd2ad63),
                                      fontSize: 16.sp,
                                      fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),

                              Row(
                                children: [
                                  Text('Ends on ',
                                      style:TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                                  Text('May 16, 2024',
                                      style:TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                                ],
                              ),


                            ],
                          ),
                          SizedBox(width: 69.w,),
                          Container(
                            width: 66.w,
                            height: 22,
                            color: Color(0xff191919),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Center(
                                child: Text('Contact',
                                    style:TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 12.sp,
                                        fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )



















                ]
            )
        )
    );
  }























  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery
        .of(context)
        .size
        .width < 400 ||
        MediaQuery
            .of(context)
            .size
            .height < 400)
        ? 200.0
        : 350.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Color(0xff11ff00),
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

}








