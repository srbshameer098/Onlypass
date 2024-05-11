import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Notification_Screen extends StatefulWidget {
  const Notification_Screen({Key? key}) : super(key: key);

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
dynamic message;
final databaseRef = FirebaseDatabase.instance.ref('Notification');

    if(ModalRoute.of(context)!.settings.arguments!=null){
      message= ModalRoute.of(context)!.settings.arguments as RemoteMessage;
      databaseRef.child(DateTime.now().millisecondsSinceEpoch.toString()).set({

        'product_Name':message.notification!.title.toString(),
        'product_Size':message.notification!.body.toString(),

      });
    }
    return  Scaffold(
      appBar: AppBar(
        title:Text( 'Notification'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Container(
        
                decoration: BoxDecoration(
        
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Colors.black
                    )
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
        
                      SizedBox(width: 310,
                        child: Column(
                          children: [
                            message==null?Text(""):   Padding(
                              padding:  EdgeInsets.symmetric(vertical: 10),
                              child: Text(message.notification!.title.toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.black),),
                            ),
                            message==null?Text(""):   Padding(
                              padding:  EdgeInsets.symmetric(vertical: 10.h),
                              child: Text(message.notification!.body.toString(),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey.shade600),),
                            ),
                          ],
                        ),
                      ),
        
                    ],
                  ),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
