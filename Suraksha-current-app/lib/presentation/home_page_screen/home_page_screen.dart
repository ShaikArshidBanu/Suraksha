import 'package:suraksha_demo_app/presentation/home_page_screen/screens.dart';

import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'NavBar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) =>
        HomePageBloc(
            HomePageState(
                homePageModelObj: HomePageModel()))
          ..add(HomePageInitialEvent()),
        child: HomePageScreen());
  }

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}
class _HomePageScreenState extends State<HomePageScreen> {
  int currentindex=0;
  final screens=[const Home_Screen(),const Location_Screen(),const Self_Defense_Screen(),const Community_Screen()];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
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
