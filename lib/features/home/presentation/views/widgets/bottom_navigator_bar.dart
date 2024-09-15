import 'package:e_learing/constants.dart';
import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/features/home/presentation/views/quiz_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:e_learing/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  static String id = 'BottomNavigator';

  @override
  State<BottomNavigator> createState() =>
      _BottomNavigatorState();
}

class _BottomNavigatorState
    extends State<BottomNavigator> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
       Quizes(),
    SettingsView(),
 

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              drawer: CustomDrawer(),

      appBar: AppBar(
        backgroundColor: blueColor,
        centerTitle: true,
        title: Image.asset(Assets.imagesLogo2,height: 80,),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: orangeColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            label: 'Home',
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.quiz_rounded,color: Colors.white,),
            label: 'My Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            label: 'Settings',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(size: 20),
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
