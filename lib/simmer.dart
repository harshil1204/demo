import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class simmer extends StatefulWidget {
  const simmer({Key? key}) : super(key: key);
  @override
  State<simmer> createState() => _simmerState();
}


  load()async{
  await Future.delayed(Duration(seconds: 5));
}


class _simmerState extends State<simmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("shimmer effect"),),
      body: Column(
        children: [
          Shimmer.fromColors(enabled:true,child: ListTile(
             title: Container(color: Colors.white70,width: 100,height: 10,),
            subtitle:Container(color: Colors.white70,width: 100,height: 10,),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
            ),
          ),
              baseColor: Colors.grey,
              highlightColor: Colors.grey.shade50

          ),
        ],
      ),
    );
  }
}
