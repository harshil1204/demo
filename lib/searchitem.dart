import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class shimmer extends StatefulWidget {
  const shimmer({Key? key}) : super(key: key);

  @override
  State<shimmer> createState() => _shimmerState();
}

class _shimmerState extends State<shimmer> {
  TextEditingController searchcon=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("search effect"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:ChangeNotifierProvider<searchpro>(
          create: (context) => searchpro(),
         child: Consumer<searchpro>(
           builder: (context, value, child) {
             return Column(
               children: [
                 TextField(decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                     labelText: "Search item"
                 ),
                   controller: searchcon,
                   onChanged: (val) {
                        value.change(val);
                   },
                 ),
                 Expanded(
                   child: ListView.builder(itemCount:100,itemBuilder: (context, index) {
                     late String position=index.toString();
                     if(searchcon.text.isEmpty){
                       return ListTile(
                         leading: CircleAvatar(backgroundImage: AssetImage("image/d1.jpg")),
                         title: Text("hello harshil $index"),
                         subtitle: Text("ribadiya"),
                       );
                     }
                     else if(position.toLowerCase().contains(searchcon.text.toLowerCase())){
                       return ListTile(
                         leading: CircleAvatar(backgroundImage: AssetImage("image/d1.jpg")),
                         title:RichText(
                           text: TextSpan(
                               text: "hello harshil",style: DefaultTextStyle.of(context).style,
                               children: <TextSpan>[
                                 TextSpan( text:index.toString(),style: TextStyle(color: Colors.red)),
                               ]
                           ),
                         ),
                       );
                     }
                     else{
                       return Container();
                     }
                   },),
                 ),
               ],
             );
           },
         ),
        )
      ),
    );
  }
}


class searchpro with ChangeNotifier{
  String search="";
    void change(String name){
      search=name.toString();
      notifyListeners();
    }
}