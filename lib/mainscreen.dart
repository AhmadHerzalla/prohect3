import 'package:drower_lc_12/profile_screen.dart';
import 'package:flutter/material.dart';
import 'favaret_screen.dart';
import 'home_screen.dart';

// ignore: camel_case_types, must_be_immutable
class instgramFull extends StatefulWidget {
  Function function;
  bool isdarke;
  instgramFull(this.function,this.isdarke, {super.key});
  

  @override
  State<instgramFull> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<instgramFull> {
  bool isdarke=false;
  int indexs =0;
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(child: Column(children:  [
             const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
              ,
              ),
              accountName: Text("ahmad-herzalla"),
               accountEmail: Text("ahmadherzalla@gmail.com")),
               const ListTile(
                title: Text("home page "),
                subtitle: Text("press to go home"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),
               ),
               const ListTile(
                title: Text(" favorite page"),
                subtitle: Text("press to go favorite"),
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward),
               ),
               const ListTile(
                title: Text("profile page "),
                subtitle: Text("press to go profile"),
                leading: Icon(Icons.perm_identity),
                trailing: Icon(Icons.arrow_forward_ios),
               ),
               Container(
                margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text("move to dark them   "),
                  Text(isdarke?"on":"off"),
                  const Spacer(),
          Switch(
        value: widget.isdarke,
         onChanged: (value){
           widget.function(value);
        setState(() { });

          })
                ],
          
              ),  )
          ],),),
           
        //-----------------------------
      
           appBar: AppBar(
        bottom: const TabBar(tabs: [
            Tab(child: Text("home"),),
             Tab(child: Text("favaret"),),
              Tab(child: Text("profile"),),
      
          ]),
        title: const Text("instgram",style: TextStyle(fontSize: 23),)),
          
          //-----------------------------
      body: TabBarView(children: [
         HomeScreen(),
        favaretScreen(),
        ProfileScreen()
      ]),
      //-----------------------------
    bottomNavigationBar:BottomNavigationBar(
        onTap: (i){
          indexs=i;
          setState(() {});
        },
           currentIndex: indexs,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home ),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite ),label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity ),label: "profile"),
          
        ]) ,
          ),
      );}
  }