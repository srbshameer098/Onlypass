import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Access extends StatefulWidget {
  const Access({Key? key}) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text('Access',style: TextStyle(color: Colors.white),) ,
          actions: [Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Icon(Icons.menu,color: Colors.white,),
          )],
        )

    );
  }
}
