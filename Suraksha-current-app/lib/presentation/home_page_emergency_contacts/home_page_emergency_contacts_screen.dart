import 'package:suraksha_demo_app/presentation/home_page_screen/screens.dart';

import 'bloc/home_page_emergency_contacts_bloc.dart';
import 'models/home_page_emergency_contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/home_page_screen/NavBar.dart';

class HomePageEmergencyContactsScreen extends StatefulWidget {
  const HomePageEmergencyContactsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageEmergencyContactsBloc>(
        create: (context) =>
        HomePageEmergencyContactsBloc(
            HomePageEmergencyContactsState(
                homePageEmergencyContactsModelObj: HomePageEmergencyContactsModel()))
          ..add(HomePageEmergencyContactsInitialEvent()),
        child: HomePageEmergencyContactsScreen());
  }

  @override
  _HomePageEmergencyContactsScreenState createState() => _HomePageEmergencyContactsScreenState();
}
class _HomePageEmergencyContactsScreenState extends State<HomePageEmergencyContactsScreen> {
  int currentindex=4;
  final screens=[const Home_Screen(),const Location_Screen(),const Self_Defense_Screen(),const Community_Screen(),const HomePageEmergencyContactsScreen()];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageEmergencyContactsBloc, HomePageEmergencyContactsState>(
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
                  drawer: NavBar(),
                  appBar: AppBar(
                      title: Container(margin: EdgeInsets.only(top: 10.v),
                        child: Text("lbl_suraksha".tr,
                            style: theme.textTheme.displayLarge),),
                      centerTitle: true,
                      backgroundColor: Color(0XD2D5FA),
                      actions: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.v),
                            child:
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.person)))
                      ]
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                      backgroundColor: Colors.black,
                      type: BottomNavigationBarType.shifting,
                      fixedColor: Colors.white,//if it is shifting
                      iconSize: 30,
                      //if bottomnavigationbar is fixed and fixedcolor is off
                      // selectedItemColor: Colors.black,
                      // unselectedItemColor: Colors.white,
                      // selectedIconTheme: const IconThemeData(color: Colors.blueGrey),
                      // unselectedIconTheme: const IconThemeData(color: Colors.amber),
                      // selectedFontSize: 20,
                      // unselectedFontSize: 13,
                      currentIndex: currentindex,
                      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
                      onTap: (value) {
                        currentindex=value;
                        setState(() {

                        });
                      },
                      items: const[
                        BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(Icons.home),label: 'Home'),
                        BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(Icons.location_history),label: 'Location'),
                        BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(Icons.sports_martial_arts),label: 'Self defence'),
                        BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(Icons.groups_2_outlined),label: 'Community')
                      ]),
                  body: IndexedStack(index: currentindex,children: screens,)
              )
          );
        }


    );
  }
}
