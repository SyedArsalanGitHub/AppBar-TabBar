
import 'package:flutter/material.dart';

class simpleAppBar extends StatefulWidget {
  const simpleAppBar({Key? key}) : super(key: key);

  @override
  State<simpleAppBar> createState() => _simpleAppBarState();
}

class _simpleAppBarState extends State<simpleAppBar> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
    child:  Scaffold(

      appBar: AppBar(
        title: const Text("AppBar"),
        centerTitle: true,

        leading: InkWell(
          onTap: (){
            print("Hellow");
          },
            child: const Icon(Icons.menu)
        ),
        actions: [
          IconButton(
          icon: Icon(Icons.notifications_none),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),

        ],
        //backgroundColor: Colors.orange,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )
          ),
        ),
        elevation: 4,
        titleSpacing: 0,
        bottom: TabBar(
          //isScrollable: true, // if we have many tabs then we can scroll tabs and this property will be set to true
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          tabs: [
             Tab(
                 icon: InkWell(
                child: Icon(Icons.home),
                   onTap: (){

                   },
             ), text: 'Home'),


            Tab(
                icon: InkWell(
                  child: Icon(Icons.star),
                  onTap: (){

                  },
                ), text: 'Feed'),
            Tab(
                icon: InkWell(
                  child: Icon(Icons.face),
                  onTap: (){

                  },
                ), text: 'Profile'),
            Tab(
                icon: InkWell(
                  child: Icon(Icons.settings),
                ), text: 'Settings'),
          ],
        ),

      ),
      body: TabBarView(
        children: [
          buildPage('Home Page'),
          buildPage('Feed Page'),
          buildPage('Profile Page'),
          buildPage('Settings Page'),
        ],
      )
    )
    );

  }
}

Widget buildPage (String text){
  return  Container(
    child: Center(child: Text(text, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),)),
  );
}