import 'package:demo/searchitem.dart';
import 'package:demo/simmer.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:shimmer() ,//Scaffold(
      //   drawer: Drawer(
      //     child: Column(children: [
      //               UserAccountsDrawerHeader(accountName: Text("harshil"), accountEmail: Text("harshil@"),),
      //         ListTile(title: Text("hello"),leading: Icon(Icons.wifi,size: 30.0,),
      //         trailing: Text("wifi"),
      //           subtitle: Text("bloottuth"),
      //         ),
      //     ],
      //     ),
      //   ),
      //   appBar: AppBar(
      //     //leading: Icon(Icons.add),
      //     backgroundColor: Colors.purple,
      //     actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.add_alarm_outlined)),
      //     ],
      //   ),
      //   body:
      //       Stack(
      //         children: [
      //           Container(
      //             alignment: Alignment.bottomRight,
      //             decoration: BoxDecoration(
      //               color: Colors.grey,
      //             ),
      //             padding:EdgeInsets.all(20.0),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Icon(Icons.home,size: 40.0,),
      //                 Icon(Icons.wallet,size: 40.0,),
      //                 Icon(Icons.payments_sharp,size: 40.0,),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             height: 650,
      //             width: 500,
      //
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60.0),
      //              bottomLeft: Radius.circular(60.0),
      //
      //              ),
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             child: Stack(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Padding(padding: EdgeInsets.only(left: 10.0,top: 70.0)),
      //                         Text("welcome,HARSHIL",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white),),
      //                   ],
      //                 ),
      //
      //               ],
      //
      //             ),
      //             decoration: BoxDecoration(
      //               color: Colors.purple,
      //               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0),
      //               bottomRight: Radius.circular(60.0),
      //               ),
      //             ),
      //           ),
      //           Positioned(
      //             height: 100,
      //             width: 100,
      //             top: 155,
      //             left: 50,
      //             child:ClipRRect(
      //               borderRadius: BorderRadius.circular(14.0),
      //             child: Image.network("https://picsum.photos/250?image=9",),
      //           ),
      //           ),
      //           Positioned(
      //             top: 90,
      //             left: 220,
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text("HARSHL",style: TextStyle(color: Colors.white,fontSize: 20.0),),
      //                 Padding(padding: EdgeInsets.all(2.0)),
      //                 Text("74627",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w900),),
      //                 SizedBox(height: 5),
      //                 Text("FLUTTER DEVELOPER",style: TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w900),),
      //
      //               ],
      //             ),),
      //
      //         ],
      //       ),
      // ),
    );
  }
}
