import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Onlypass extends StatefulWidget {
  const Onlypass({Key? key}) : super(key: key);

  @override
  State<Onlypass> createState() => _OnlypassState();
}

class _OnlypassState extends State<Onlypass> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text('Onlypass',style: TextStyle(color: Colors.white),) ,
          actions: [Icon(Icons.list,color: Colors.white,)],
        )

    );
  }
}
