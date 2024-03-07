import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text('Event',style: TextStyle(color: Colors.white),) ,
          actions: [Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Icon(Icons.menu,color: Colors.white,),
          )],
        )

    );
  }
}
