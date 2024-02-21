import 'package:flutter/material.dart';
import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import  'package:suraksha_demo_app/presentation/home_page_emergency_contacts/home_page_emergency_contacts_screen.dart';
class Home_Screen extends StatelessWidget {
  const  Home_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.maxFinite,
          child:Padding(
            padding: const EdgeInsets.all(25),
            child: GridView(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Location_Screen()));
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share_location, size: 50),
                          Text("Share Your Location",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15, fontFamily: 'Open Sans',)),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePageEmergencyContactsScreen()));
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.contact_emergency_sharp, size: 50),
                          Text("Emergency Contacts", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15, fontFamily: 'Open Sans',))
                        ]),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.directions_walk, size: 50),
                        Text("Safe Walk Routes", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15, fontFamily: 'Open Sans',))
                      ]),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LiveChatScreen()));
                  },
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.chat, size: 50),
                            Text("24*7 Chat Support", style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15, fontFamily: 'Open Sans',))
                          ])
                  ),
                ),
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Are you in Emergency?",  style: theme.textTheme.headlineSmall,),
                          SizedBox(height: 20.v),
                          Text("Press the Emergency button help will reach you safely",
                            style: TextStyle(fontWeight:FontWeight.w400 ),),
                        ])
                ),
                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.shade500,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 15.0, //extend the shadow

                        )
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Emergency", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25, fontFamily: 'Open Sans',color:Colors.white))
                        ])
                ),
              ],
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30, crossAxisSpacing: 20,),
            ),
          ),
        ));
  }
}

class Location_Screen extends StatelessWidget {
  const  Location_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal:50.h,
          vertical: 26.v,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:10.v),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Text(
                "Location",
                style: theme.textTheme.headlineSmall,
              ),
            ),
            Spacer(),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share_location),
                    Text("Share your location", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            SizedBox(height:10.v),

            SizedBox(height:2.v),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.explore),
                    Text("Explore near by areas", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            SizedBox(height:10.v),
            SizedBox(height:2.v),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pin_drop),
                    Text("Show Map", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            Spacer(),
            SizedBox(height: 70.h),
          ],
        ),
      ),
    );
  }
}

class Self_Defense_Screen extends StatelessWidget {
  const Self_Defense_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 0.h,
          vertical: 26.v,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:10.v),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Text(
                "Self Defence Resources",
                style: theme.textTheme.headlineSmall,
              ),
            ),
            Spacer(),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BEGINNER LEVEL", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15, fontFamily: 'Open Sans',color: Colors.white))
                  ]),
            ),
            SizedBox(height:10.v),

            SizedBox(height:2.v),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("INTERMEDIATE LEVEL", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.white))
                  ]),
            ),
            SizedBox(height:10.v),
            SizedBox(height:2.v),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ADVANCED LEVEL", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.white))
                  ]),
            ),
            Spacer(),
            Text("Guide to Safety : Resources",
              style: theme.textTheme.headlineSmall,
            ),
            Spacer(),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Safety at Home", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            SizedBox(height:10.v),

            SizedBox(height:2.v),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Safety at Work", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            SizedBox(height:10.v),

            SizedBox(height:2.v),
            Container(
              width: 260,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Safety in Public Places", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15, fontFamily: 'Open Sans',color: Colors.black))
                  ]),
            ),
            Spacer(),
            SizedBox(height: 70.h),
          ],
        ),
      ),);
  }
}

class Community_Screen extends StatelessWidget {
  const  Community_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 0.h,
            vertical: 26.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "Join Channels",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Spacer(),
              Container(
                width: 300,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.group),
                      Text("South Delhi Womens Group", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16, fontFamily: 'Open Sans',color: Colors.red.shade300))
                    ]),
              ),
              Spacer(),
              Container(
                width: 300,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.group),
                      Text("New Delhi Womens Group", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16, fontFamily: 'Open Sans',color: Colors.red.shade300))
                    ]),
              ),
              Spacer(),
              Container(
                width: 300,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.group),
                      Text("Delhi NCR Womens Group", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16, fontFamily: 'Open Sans',color: Colors.red.shade300))
                    ]),
              ),
              Spacer(),
              Container(
                width: 300,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.group),
                      Text("Old Delhi Womens Group", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16, fontFamily: 'Open Sans',color: Colors.red.shade300))
                    ]),
              ),
              Spacer(),
              Container(
                width: 300,
                height: 90,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.group_add_outlined),
                      SizedBox(width:20.v),
                      Text("Create a group", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16, fontFamily: 'Open Sans',color: Colors.black))
                    ]),
              ),
              Spacer(),
            ],
          ),
        ),
    );
  }
}

class HomePageEmergencyContactsScreen extends StatelessWidget {
  const  HomePageEmergencyContactsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.maxFinite,
          child:Padding(
            padding: const EdgeInsets.all(25),
            child: GridView(
              children: [
                   Container(
                    width: 70,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Live Chat",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12, fontFamily: 'Open Sans',)),
                        ]),
                  ),
                  Container(
                    width: 70,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Record Audio/Video", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12, fontFamily: 'Open Sans',))
                        ]),
                  ),
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Police", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12, fontFamily: 'Open Sans',))
                      ]),
                ),

              ],
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 30, crossAxisSpacing: 20,),
            ),
          ),
        ));
  }
}

class LiveChatScreen extends StatelessWidget {
  const LiveChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.maxFinite,
          child:Padding(
            padding: const EdgeInsets.all(25),
            child: GridView(
              children: [
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Live Chat",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12, fontFamily: 'Open Sans',)),
                      ]),
                ),
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Record Audio/Video", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12, fontFamily: 'Open Sans',))
                      ]),
                ),
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Police", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12, fontFamily: 'Open Sans',))
                      ]),
                ),

              ],
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 30, crossAxisSpacing: 20,),
            ),
          ),
        ));
  }
}