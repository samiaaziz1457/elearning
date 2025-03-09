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
        title: Text("Tab Bar View"),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
            Tab(child: Container(
              height: 50,
              width: 100,
              color: Colors.amber,
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