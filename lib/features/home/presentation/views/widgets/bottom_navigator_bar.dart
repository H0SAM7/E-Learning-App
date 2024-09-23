import 'package:e_learing/constants.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/features/home/presentation/views/notificatins_view.dart';
import 'package:e_learing/features/home/presentation/views/quiz_view.dart';
import 'package:e_learing/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  static String id = 'BottomNavigator';

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Quizes(),
    NotificatinsView(),
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
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: blueWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home, color: blueBlackColor),
                        Text('Home', style: TextStyle(color: blueBlackColor)),
                      ],
                    ),
                  )
                : const Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: blueWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.quiz_rounded, color: blueBlackColor),
                        Text('My Quiz',
                            style: TextStyle(color: blueBlackColor)),
                      ],
                    ),
                  )
                : const Icon(Icons.quiz_rounded, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: blueWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.notifications, color: blueBlackColor),
                        Text('Notifications',
                            style: TextStyle(color: blueBlackColor)),
                      ],
                    ),
                  )
                : const Icon(Icons.notifications, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: blueWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.settings, color: blueBlackColor),
                        Text('Settings',
                            style: TextStyle(color: blueBlackColor)),
                      ],
                    ),
                  )
                : const Icon(Icons.settings, color: Colors.black),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: blueBlackColor,
        selectedIconTheme: const IconThemeData(size: 15),
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
