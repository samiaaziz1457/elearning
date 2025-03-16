import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/showmodelbuttomsheet.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
   
    super.initState();
    _tabController =TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
   
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
              children: [
                Text("Polupar Courses",style: TextStyle(color:Colors.black,fontSize: 20, fontWeight:FontWeight.w500 ),),
            Spacer(),
            TextButton(onPressed: (){}, child: Text("see all",style: TextStyle(color: Appcolor.maincolor,fontSize: 20),)),
                 Icon(Icons.skip_next,color: Appcolor.maincolor,),
              ],
            ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
            Tab(child: Container(
              height: 50,
              width: 100,
              color: const Color.fromARGB(255, 180, 139, 14),
              child: Text('chat'),
            ),),
             Tab(text: "Call",),
              Tab(text: "Notification",),
          ]),
          Expanded(child: 
          TabBarView(
             controller: _tabController,
            children: [
             showmodelbottom(),
             Text("Call Screene"),
             Text('Notification Screen')
          ]))
        ],
      ),
    );
  }
}